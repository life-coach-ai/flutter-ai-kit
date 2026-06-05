import 'persisted_model_utils.dart';

/// `message_tools[].client_intent` values persisted on user history rows.
///
/// Mirrors `MessageToolClientIntent` in lcai-core `tool_intent_model.py`.
enum MessageToolClientIntent {
  toolHelpRequested('tool_help_requested'),
  toolExecutionRequested('tool_execution_requested'),
  toolRecommendationAccepted('tool_recommendation_accepted'),
  toolRecommendationDismissed('tool_recommendation_dismissed');

  const MessageToolClientIntent(this.jsonValue);

  final String jsonValue;

  static MessageToolClientIntent? tryParse(String? value) {
    if (value == null) {
      return null;
    }
    for (final intent in MessageToolClientIntent.values) {
      if (intent.jsonValue == value) {
        return intent;
      }
    }
    return null;
  }
}

/// Source of a persisted chat tool intent.
///
/// Mirrors `ChatToolIntentSource` in lcai-core `tool_intent_model.py`.
enum ChatToolIntentSource {
  fromAvailableToolsUi('from_available_tools_ui'),
  fromInlineToolRecommendationUi('from_inline_tool_recommendation_ui'),
  recognizedFromUserMessage('recognized_from_user_message');

  const ChatToolIntentSource(this.jsonValue);

  final String jsonValue;

  static ChatToolIntentSource? tryParse(String? value) {
    if (value == null) {
      return null;
    }
    for (final source in ChatToolIntentSource.values) {
      if (source.jsonValue == value) {
        return source;
      }
    }
    return null;
  }
}

/// Tool intent stored on a user message in Firestore history.
///
/// Mirrors lcai-core `ChatToolIntent` (`tool_intent_model.py`). Distinct from
/// [ChatToolIntent] in `chat_tool_intent.dart`, which is the simplified HTTP
/// request shape for `POST /chatMessage`.
final class PersistedChatToolIntent {
  const PersistedChatToolIntent({
    required this.toolId,
    required this.clientIntent,
    required this.source,
    this.params,
  });

  factory PersistedChatToolIntent.fromJson(Map<String, dynamic> json) {
    final clientIntent = MessageToolClientIntent.tryParse(
      json['client_intent'] as String?,
    );
    final source = ChatToolIntentSource.tryParse(json['source'] as String?);
    if (clientIntent == null || source == null) {
      throw FormatException(
        'Invalid persisted chat tool intent: $json',
      );
    }
    return PersistedChatToolIntent(
      toolId: json['tool_id'] as String,
      clientIntent: clientIntent,
      source: source,
      params: json['params'] == null
          ? null
          : Map<String, dynamic>.from(
              json['params'] as Map<dynamic, dynamic>,
            ),
    );
  }

  final String toolId;
  final MessageToolClientIntent clientIntent;
  final ChatToolIntentSource source;
  final Map<String, dynamic>? params;

  Map<String, dynamic> toJson() => {
        'tool_id': toolId,
        'client_intent': clientIntent.jsonValue,
        'source': source.jsonValue,
        if (params != null) 'params': params,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistedChatToolIntent &&
          toolId == other.toolId &&
          clientIntent == other.clientIntent &&
          source == other.source &&
          mapEquals(params, other.params);

  @override
  int get hashCode => Object.hash(toolId, clientIntent, source, params);
}
