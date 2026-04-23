// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../providers/interface/chat_message.dart';
import 'active_tool_execution_summary.dart';
import 'session_tool_types.dart';

part 'history_snapshot.freezed.dart';

/// Domain-only view of persisted session messages and tool state — no UI flags.
@freezed
class HistorySnapshot with _$HistorySnapshot {
  const factory HistorySnapshot({
    required List<ChatMessage> messages,
    @Default({}) Map<int, Map<String, dynamic>> metadataByIndex,
    @Default([]) List<AvailableToolInfo> availableTools,
    @Default(false) bool isAwaitingAvailableToolsUpdate,
    @Default({}) Set<String> usedTools,
    @Default([]) List<String> activeToolExecutionIds,
    @Default([]) List<ActiveToolExecutionSummary> activeToolExecutions,
  }) = _HistorySnapshot;
}
