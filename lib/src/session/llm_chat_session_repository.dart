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

  Stream<String> sendMessageStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
    List<SelectedChatTool>? selectedChatTools = const [],
    String? editedUserMessageId,
  });

  Map<String, dynamic>? metadataForMessage(int index);

  Future<Map<String, dynamic>> executeToolAsync({
    required String toolId,
    Map<String, dynamic> params,
  });

  void attachAsyncFirestoreSyncIfNeeded();

  void detachAsyncFirestoreSync();

  Future<Map<String, dynamic>> fetchIntroMessage();

  void dispose();
}
