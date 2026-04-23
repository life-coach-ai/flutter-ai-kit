// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../providers/interface/chat_message.dart';
import '../session/active_tool_execution_summary.dart';
import '../session/session_tool_types.dart';
import 'chat_ui_effect.dart';

part 'chat_state.freezed.dart';

/// UI-oriented snapshot for the chat shell ([ChatCubit] owns assembly).
@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<ChatMessage> visibleMessages,
    @Default([]) List<AvailableToolInfo> availableTools,
    @Default(false) bool isAwaitingAvailableToolsUpdate,
    @Default({}) Set<String> usedTools,
    @Default([]) List<String> activeToolExecutionIds,
    @Default([]) List<ActiveToolExecutionSummary> activeToolExecutions,
    @Default(false) bool isSending,
    @Default(false) bool isStreamingAssistant,
    ChatMessage? composerInitialMessage,
    ChatMessage? pendingEditAssistantCopy,
    @Default(false) bool isTranscribing,
    /// Monotonic nonce so [BlocListener] can observe each effect once.
    @Default(0) int effectNonce,
    ChatUiEffect? lastEffect,
  }) = _ChatState;
}
