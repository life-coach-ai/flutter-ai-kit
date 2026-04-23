/// POST /chat `message_tools[].client_intent` values (must match lcai-core).
abstract final class ChatToolMessageClientIntent {
  static const selectedFromAvailableTools =
      'selected_tool_from_available_tools';
  static const acceptedInlineRecommendation =
      'accepted_inline_tool_recommendation';
}

/// Tool selection sent with a chat message (e.g. `POST /chat` `message_tools`
/// or `chat_tool_intents`).
///
/// For UI drafts this data is often carried in a `CustomAttachment` with
/// type `chat_tool`; use [fromData] / [toData] for that shape.
final class ChatToolIntent {
  /// Creates a [ChatToolIntent] with the given tool ID and parameters.
  const ChatToolIntent({
    required this.toolId,
    required this.params,
    this.clientIntent = ChatToolMessageClientIntent.selectedFromAvailableTools,
  });

  /// From `toolId` / `params` (e.g. app [SelectedChatTool]-like types).
  ///
  /// [clientIntent] defaults to picker intent (tool sheet). Use
  /// [ChatToolMessageClientIntent.acceptedInlineRecommendation] for inline
  /// assistant recommendations.
  factory ChatToolIntent.fromToolSelection({
    required String toolId,
    required Map<String, dynamic> params,
    String clientIntent =
        ChatToolMessageClientIntent.selectedFromAvailableTools,
  }) =>
      ChatToolIntent(
        toolId: toolId,
        params: params,
        clientIntent: clientIntent,
      );

  /// Create from CustomAttachment `data`.
  factory ChatToolIntent.fromData(Map<String, dynamic> data) {
    final raw = data['clientIntent'] as String?;
    return ChatToolIntent(
      toolId: data['toolId'] as String,
      params: Map<String, dynamic>.from(
        data['params'] as Map<dynamic, dynamic>,
      ),
      clientIntent:
          raw ?? ChatToolMessageClientIntent.selectedFromAvailableTools,
    );
  }

  /// The ID of the selected tool (e.g., "qi_men", "i_ching", "bazi").
  final String toolId;

  /// The parameters for the tool request.
  final Map<String, dynamic> params;

  /// Mirrors POST /chat `message_tools[].client_intent`.
  final String clientIntent;

  /// Convert to backend request format.
  Map<String, dynamic> toRequestJson() => {
        'tool_id': toolId,
        'params': params,
        'client_intent': clientIntent,
      };

  /// Convert to data format for CustomAttachment.
  Map<String, dynamic> toData() => {
        'toolId': toolId,
        'params': params,
        'clientIntent': clientIntent,
      };
}
