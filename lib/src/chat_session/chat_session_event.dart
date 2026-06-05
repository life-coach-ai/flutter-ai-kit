import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../repositories/message_ack.dart';
import '../repositories/model/chat_session.dart';
import '../repositories/model/persisted_chat_message.dart';
import '../repositories/model/persisted_chat_tool_intent.dart';
import '../repositories/model/tool_execution_intent_request.dart';
import '../session/active_tool_execution_summary.dart';

part 'chat_session_event.freezed.dart';

/// Domain and user events for [ChatSessionBloc].
@freezed
sealed class ChatSessionEvent with _$ChatSessionEvent {
  const factory ChatSessionEvent.historyReceived({
    required List<ChatMessageBase> messages,
  }) = ChatSessionHistoryReceived;

  const factory ChatSessionEvent.sessionDocumentReceived({
    ChatSession? session,
  }) = ChatSessionDocumentReceived;

  const factory ChatSessionEvent.toolExecutionsReceived({
    required List<ActiveToolExecutionSummary> executions,
  }) = ChatSessionToolExecutionsReceived;

  const factory ChatSessionEvent.sendMessageRequested({
    required String text,
    String? editedMessageUuid,
    @Default(<PersistedChatToolIntent>[])
    List<PersistedChatToolIntent> chatToolIntents,
    @Default(<ToolExecutionIntentRequest>[])
    List<ToolExecutionIntentRequest> activeToolExecutionIntents,
  }) = ChatSessionSendMessageRequested;

  const factory ChatSessionEvent.sendMessageAcknowledged({
    required MessageAck ack,
  }) = ChatSessionSendMessageAcknowledged;

  const factory ChatSessionEvent.sendMessageFailed({
    required Object error,
  }) = ChatSessionSendMessageFailed;

  const factory ChatSessionEvent.cancelStreamRequested() =
      ChatSessionCancelStreamRequested;

  const factory ChatSessionEvent.editLastTurnRequested() =
      ChatSessionEditLastTurnRequested;

  const factory ChatSessionEvent.editCancelled() = ChatSessionEditCancelled;

  const factory ChatSessionEvent.selectSuggestion({
    required String suggestion,
  }) = ChatSessionSelectSuggestion;

  const factory ChatSessionEvent.translateSpeechToTextRequested({
    required XFile file,
  }) = ChatSessionTranslateSpeechToTextRequested;

  const factory ChatSessionEvent.cancelSpeechToTextRequested() =
      ChatSessionCancelSpeechToTextRequested;

  const factory ChatSessionEvent.uiEffectCleared() = ChatSessionUiEffectCleared;
}
