import 'persisted_chat_tool_intent.dart';
import 'persisted_model_utils.dart';
import 'user_location.dart';

/// Origin of a persisted chat history row.
///
/// Mirrors `ChatMessageOrigin` in lcai-core `chat_message.py`.
enum ChatMessageOrigin {
  user('user'),
  assistant('assistant');

  const ChatMessageOrigin(this.jsonValue);

  final String jsonValue;

  static ChatMessageOrigin? tryParse(String? value) {
    if (value == null) {
      return null;
    }
    for (final origin in ChatMessageOrigin.values) {
      if (origin.jsonValue == value) {
        return origin;
      }
    }
    return null;
  }
}

/// Assistant reply generation lifecycle persisted on history rows.
///
/// Mirrors `AssistantGenerationStatus` in lcai-core `chat_message.py`.
enum AssistantGenerationStatus {
  none('none'),
  pending('pending'),
  generating('generating'),
  completed('completed'),
  failed('failed');

  const AssistantGenerationStatus(this.jsonValue);

  final String jsonValue;

  static const _known = {
    'none',
    'pending',
    'generating',
    'completed',
    'failed',
  };

  static AssistantGenerationStatus parse(
    Object? value, {
    AssistantGenerationStatus fallback = AssistantGenerationStatus.completed,
  }) {
    if (value is String && _known.contains(value)) {
      return AssistantGenerationStatus.values.firstWhere(
        (status) => status.jsonValue == value,
      );
    }
    return fallback;
  }
}

/// Shared persisted chat history fields (user and assistant).
///
/// Mirrors lcai-core `ChatMessageBase`. Intentionally separate from the
/// provider-layer [ChatMessage] used by legacy LLM streaming UI.
sealed class ChatMessageBase {
  const ChatMessageBase({
    required this.origin,
    required this.text,
    required this.serverUuid,
    this.serverTimestamp,
    this.clientUuid,
    this.clientTimestamp,
  });

  factory ChatMessageBase.fromFirestore(
    Map<String, dynamic> data, {
    String? documentId,
  }) {
    final normalized = Map<String, dynamic>.from(data);
    final serverUuid =
        normalized['server_uuid'] as String? ?? documentId;
    if (serverUuid == null || serverUuid.isEmpty) {
      throw FormatException(
        'Persisted chat message requires server_uuid or documentId: $data',
      );
    }
    normalized['server_uuid'] = serverUuid;

    final origin = ChatMessageOrigin.tryParse(
      normalized['origin'] as String?,
    );
    if (origin == null) {
      throw FormatException('Unknown chat message origin: $data');
    }

    final text = normalized['text'];
    if (text is! String) {
      throw FormatException('Chat message text must be a string: $data');
    }

    final shared = _SharedFields(
      origin: origin,
      text: text,
      serverUuid: serverUuid,
      serverTimestamp: parseFirestoreTimestamp(normalized['server_timestamp']),
      clientUuid: normalized['client_uuid'] as String?,
      clientTimestamp: parseFirestoreTimestamp(normalized['client_timestamp']),
    );

    return switch (origin) {
      ChatMessageOrigin.user => UserChatMessage(
          origin: shared.origin,
          text: shared.text,
          serverUuid: shared.serverUuid,
          serverTimestamp: shared.serverTimestamp,
          clientUuid: shared.clientUuid,
          clientTimestamp: shared.clientTimestamp,
          version: (normalized['version'] as num?)?.toInt(),
          userLocation: normalized['user_location'] == null
              ? null
              : UserLocation.fromJson(
                  Map<String, dynamic>.from(
                    normalized['user_location'] as Map<dynamic, dynamic>,
                  ),
                ),
          chatToolIntents: _parseChatToolIntents(
            normalized['chat_tool_intents'],
          ),
          editedMessageId: normalized['edited_message_id'] as String?,
        ),
      ChatMessageOrigin.assistant => AssistantChatMessage(
          origin: shared.origin,
          text: shared.text,
          serverUuid: shared.serverUuid,
          serverTimestamp: shared.serverTimestamp,
          clientUuid: shared.clientUuid,
          clientTimestamp: shared.clientTimestamp,
          generationStatus: AssistantGenerationStatus.parse(
            normalized['generation_status'],
          ),
          parentMessageUuid: normalized['parent_message_uuid'] as String?,
          processingState: normalized['processing_state'] as String?,
          metadata: normalized['metadata'] == null
              ? null
              : Map<String, dynamic>.from(
                  normalized['metadata'] as Map<dynamic, dynamic>,
                ),
        ),
    };
  }

  final ChatMessageOrigin origin;
  final String text;
  final String serverUuid;
  final DateTime? serverTimestamp;
  final String? clientUuid;
  final DateTime? clientTimestamp;

  Map<String, dynamic> toFirestore();

}

/// User-origin row from Firestore `history`.
///
/// Mirrors lcai-core `UserChatMessage`.
final class UserChatMessage extends ChatMessageBase {
  const UserChatMessage({
    super.origin = ChatMessageOrigin.user,
    required super.text,
    required super.serverUuid,
    super.serverTimestamp,
    super.clientUuid,
    super.clientTimestamp,
    this.version,
    this.userLocation,
    this.chatToolIntents,
    this.editedMessageId,
  });

  final int? version;
  final UserLocation? userLocation;
  final List<PersistedChatToolIntent>? chatToolIntents;
  final String? editedMessageId;

  @override
  Map<String, dynamic> toFirestore() => {
        'origin': origin.jsonValue,
        'text': text,
        'server_uuid': serverUuid,
        if (serverTimestamp != null)
          'server_timestamp': serverTimestamp!.toUtc().toIso8601String(),
        if (clientUuid != null) 'client_uuid': clientUuid,
        if (clientTimestamp != null)
          'client_timestamp': clientTimestamp!.toUtc().toIso8601String(),
        if (version != null) 'version': version,
        if (userLocation != null) 'user_location': userLocation!.toJson(),
        if (chatToolIntents != null)
          'chat_tool_intents':
              chatToolIntents!.map((intent) => intent.toJson()).toList(),
        if (editedMessageId != null) 'edited_message_id': editedMessageId,
      };

  @override
  bool operator ==(Object other) =>
      other is UserChatMessage &&
      origin == other.origin &&
      text == other.text &&
      serverUuid == other.serverUuid &&
      serverTimestamp == other.serverTimestamp &&
      clientUuid == other.clientUuid &&
      clientTimestamp == other.clientTimestamp &&
      version == other.version &&
      userLocation == other.userLocation &&
      listEquals(chatToolIntents, other.chatToolIntents) &&
      editedMessageId == other.editedMessageId;

  @override
  int get hashCode => Object.hash(
        super.hashCode,
        version,
        userLocation,
        chatToolIntents,
        editedMessageId,
      );
}

/// Assistant-origin row from Firestore `history`.
///
/// Mirrors lcai-core `AssistantChatMessage`.
final class AssistantChatMessage extends ChatMessageBase {
  const AssistantChatMessage({
    super.origin = ChatMessageOrigin.assistant,
    required super.text,
    required super.serverUuid,
    super.serverTimestamp,
    super.clientUuid,
    super.clientTimestamp,
    this.generationStatus = AssistantGenerationStatus.completed,
    this.parentMessageUuid,
    this.processingState,
    this.metadata,
  });

  final AssistantGenerationStatus generationStatus;
  final String? parentMessageUuid;
  final String? processingState;
  final Map<String, dynamic>? metadata;

  @override
  Map<String, dynamic> toFirestore() => {
        'origin': origin.jsonValue,
        'text': text,
        'server_uuid': serverUuid,
        if (serverTimestamp != null)
          'server_timestamp': serverTimestamp!.toUtc().toIso8601String(),
        if (clientUuid != null) 'client_uuid': clientUuid,
        if (clientTimestamp != null)
          'client_timestamp': clientTimestamp!.toUtc().toIso8601String(),
        'generation_status': generationStatus.jsonValue,
        if (parentMessageUuid != null)
          'parent_message_uuid': parentMessageUuid,
        if (processingState != null) 'processing_state': processingState,
        if (metadata != null) 'metadata': metadata,
      };

  @override
  bool operator ==(Object other) =>
      other is AssistantChatMessage &&
      origin == other.origin &&
      text == other.text &&
      serverUuid == other.serverUuid &&
      serverTimestamp == other.serverTimestamp &&
      clientUuid == other.clientUuid &&
      clientTimestamp == other.clientTimestamp &&
      generationStatus == other.generationStatus &&
      parentMessageUuid == other.parentMessageUuid &&
      processingState == other.processingState &&
      mapEquals(metadata, other.metadata);

  @override
  int get hashCode => Object.hash(
        super.hashCode,
        generationStatus,
        parentMessageUuid,
        processingState,
        metadata,
      );
}

final class _SharedFields {
  const _SharedFields({
    required this.origin,
    required this.text,
    required this.serverUuid,
    required this.serverTimestamp,
    required this.clientUuid,
    required this.clientTimestamp,
  });

  final ChatMessageOrigin origin;
  final String text;
  final String serverUuid;
  final DateTime? serverTimestamp;
  final String? clientUuid;
  final DateTime? clientTimestamp;
}

List<PersistedChatToolIntent>? _parseChatToolIntents(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is! List) {
    return null;
  }
  return [
    for (final item in value)
      PersistedChatToolIntent.fromJson(
        Map<String, dynamic>.from(item as Map<dynamic, dynamic>),
      ),
  ];
}
