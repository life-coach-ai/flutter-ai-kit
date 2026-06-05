import '../providers/interface/attachments.dart';
import '../providers/interface/chat_message.dart';
import '../repositories/model/persisted_chat_message.dart';
import '../repositories/model/persisted_chat_tool_intent.dart';

/// Maps persisted Firestore history rows to legacy UI [ChatMessage] rows.
List<ChatMessage> persistedMessagesToUi(Iterable<ChatMessageBase> messages) =>
    [for (final message in messages) persistedMessageToUi(message)];

ChatMessage persistedMessageToUi(ChatMessageBase message) => switch (message) {
      UserChatMessage(:final text, :final serverUuid, :final clientUuid,
          :final serverTimestamp, :final clientTimestamp, :final chatToolIntents) =>
        ChatMessage.user(
          text,
          _toolIntentsToAttachments(chatToolIntents),
          serverUuid: serverUuid,
          clientUuid: clientUuid,
          serverTimestamp: serverTimestamp,
          clientTimestamp: clientTimestamp,
        ),
      AssistantChatMessage(
        :final text,
        :final serverUuid,
        :final clientUuid,
        :final serverTimestamp,
        :final clientTimestamp,
        :final metadata,
      ) =>
        _assistantToUi(
          text: text,
          serverUuid: serverUuid,
          clientUuid: clientUuid,
          serverTimestamp: serverTimestamp,
          clientTimestamp: clientTimestamp,
          metadata: metadata,
        ),
    };

ChatMessage _assistantToUi({
  required String text,
  required String serverUuid,
  String? clientUuid,
  DateTime? serverTimestamp,
  DateTime? clientTimestamp,
  Map<String, dynamic>? metadata,
}) {
  final message = ChatMessage.llm(
    serverUuid: serverUuid,
    clientUuid: clientUuid,
    serverTimestamp: serverTimestamp,
    clientTimestamp: clientTimestamp,
    metadata: metadata,
  );
  if (text.isNotEmpty) {
    message.text = text;
  }
  return message;
}

List<Attachment> _toolIntentsToAttachments(
  List<PersistedChatToolIntent>? intents,
) {
  if (intents == null || intents.isEmpty) {
    return const [];
  }
  return [
    for (final intent in intents)
      CustomAttachment(
        name: intent.toolId,
        customType: 'chat_tool',
        data: {
          'tool_id': intent.toolId,
          if (intent.params != null) 'params': intent.params,
        },
      ),
  ];
}

/// Whether the assistant row is still being generated on the backend.
bool isAssistantGenerationInFlight(AssistantGenerationStatus status) =>
    status == AssistantGenerationStatus.pending ||
    status == AssistantGenerationStatus.generating;

/// Last assistant generation status in [messages], if any.
AssistantGenerationStatus? lastAssistantGenerationStatus(
  Iterable<ChatMessageBase> messages,
) {
  for (final message in messages.toList().reversed) {
    if (message case AssistantChatMessage(:final generationStatus)) {
      return generationStatus;
    }
  }
  return null;
}
