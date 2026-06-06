import '../providers/interface/attachments.dart';
import '../repositories/model/chat_tool_intent.dart';
import '../repositories/model/persisted_chat_tool_intent.dart';

/// Maps composer [Attachment] rows to persisted chat tool intents for send.
List<PersistedChatToolIntent> attachmentsToPersistedChatToolIntents(
  Iterable<Attachment> attachments,
) {
  return [
    for (final attachment in attachments)
      if (attachment case CustomAttachment(customType: 'chat_tool', :final data))
        _toPersisted(ChatToolIntent.fromData(
          Map<String, dynamic>.from(data as Map),
        )),
  ];
}

PersistedChatToolIntent _toPersisted(ChatToolIntent intent) {
  final isInlineRecommendation = intent.clientIntent ==
      ChatToolMessageClientIntent.acceptedInlineRecommendation;

  return PersistedChatToolIntent(
    toolId: intent.toolId,
    clientIntent: isInlineRecommendation
        ? MessageToolClientIntent.toolRecommendationAccepted
        : MessageToolClientIntent.toolExecutionRequested,
    source: isInlineRecommendation
        ? ChatToolIntentSource.fromInlineToolRecommendationUi
        : ChatToolIntentSource.fromAvailableToolsUi,
    params: intent.params,
  );
}
