// Copyright 2024 The Flutter Authors. All rights reserved.

import '../providers/interface/attachments.dart';
import '../providers/interface/chat_message.dart';
import 'history_snapshot.dart';
import 'session_tool_types.dart';

/// Domain API for one chat session ([ChatSessionLlmRepository] in the app).
///
/// **History delivery:** use [watchHistory] as the single lifecycle stream for
/// this session (initial emission + updates). [readSnapshot] is a synchronous
/// read of the same underlying model — not a competing network fetch.
abstract class LlmChatSessionRepository {
  HistorySnapshot readSnapshot();

  /// Emits [readSnapshot] immediately on listen, then on each domain change.
  Stream<HistorySnapshot> watchHistory();

  /// Replaces stored session messages (e.g. edit flow trimming).
  void replaceSessionMessages(Iterable<ChatMessage> messages);

  Stream<String> sendMessageStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
    String? editedUserMessageId,
  });

  Stream<String> generateStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
  });

  Map<String, dynamic>? metadataForMessage(int index);

  void setRequestedTools(List<SelectedChatTool>? tools);

  Future<Map<String, dynamic>> executeToolAsync({
    required String toolId,
    Map<String, dynamic> params,
  });

  void attachAsyncFirestoreSyncIfNeeded();

  void detachAsyncFirestoreSync();

  Future<Map<String, dynamic>> fetchIntroMessage();

  void dispose();
}
