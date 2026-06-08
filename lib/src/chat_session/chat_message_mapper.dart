import '../providers/interface/attachments.dart';
import '../providers/interface/chat_message.dart';
import '../repositories/model/persisted_chat_message.dart';
import '../repositories/model/persisted_chat_tool_intent.dart';

/// Maps persisted Firestore history rows to legacy UI [ChatMessage] rows.
List<ChatMessage> persistedMessagesToUi(
  Iterable<ChatMessageBase> messages, {
  required String assistantErrorLabel,
}) =>
    [
      for (final message in messages)
        persistedMessageToUi(
          message,
          assistantErrorLabel: assistantErrorLabel,
        ),
    ];

ChatMessage persistedMessageToUi(
  ChatMessageBase message, {
  required String assistantErrorLabel,
}) =>
    switch (message) {
      UserChatMessage(
        :final text,
        :final serverUuid,
        :final clientUuid,
        :final serverTimestamp,
        :final clientTimestamp,
        :final chatToolIntents,
      ) =>
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
        :final generationStatus,
        :final metadata,
      ) =>
        _assistantToUi(
          text: text,
          serverUuid: serverUuid,
          clientUuid: clientUuid,
          serverTimestamp: serverTimestamp,
          clientTimestamp: clientTimestamp,
          generationStatus: generationStatus,
          metadata: metadata,
          assistantErrorLabel: assistantErrorLabel,
        ),
    };

ChatMessage _assistantToUi({
  required String text,
  required String serverUuid,
  required AssistantGenerationStatus generationStatus,
  required String assistantErrorLabel,
  String? clientUuid,
  DateTime? serverTimestamp,
  DateTime? clientTimestamp,
  Map<String, dynamic>? metadata,
}) {
  final mergedMetadata = <String, dynamic>{
    ...?metadata,
    if (generationStatus == AssistantGenerationStatus.failed)
      'generation_status': generationStatus.jsonValue,
  };

  final message = ChatMessage.llm(
    serverUuid: serverUuid,
    clientUuid: clientUuid,
    serverTimestamp: serverTimestamp,
    clientTimestamp: clientTimestamp,
    metadata: mergedMetadata.isEmpty ? null : mergedMetadata,
  );

  if (generationStatus == AssistantGenerationStatus.failed && text.isEmpty) {
    message.text = assistantErrorLabel;
  } else if (text.isNotEmpty) {
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

/// User row in [history] with the given [serverUuid], if any.
UserChatMessage? findUserMessageByServerUuid(
  Iterable<ChatMessageBase> history,
  String serverUuid,
) {
  for (final message in history) {
    if (message is UserChatMessage && message.serverUuid == serverUuid) {
      return message;
    }
  }
  return null;
}

/// Server UUID of the user message that can be retried when the last turn failed.
///
/// Uses [AssistantChatMessage.parentMessageUuid] and verifies the parent user
/// row is still present in [history].
String? retryableUserMessageServerUuid(List<ChatMessageBase> history) {
  if (history.isEmpty) {
    return null;
  }
  final last = history.last;
  if (last is! AssistantChatMessage ||
      last.generationStatus != AssistantGenerationStatus.failed) {
    return null;
  }
  final parentUuid = last.parentMessageUuid?.trim();
  if (parentUuid == null || parentUuid.isEmpty) {
    return null;
  }
  return findUserMessageByServerUuid(history, parentUuid) == null
      ? null
      : parentUuid;
}
