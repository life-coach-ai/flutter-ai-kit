// Copyright 2024 The Flutter Authors. All rights reserved.

import 'dart:async';

import '../providers/interface/attachments.dart';
import '../providers/interface/chat_message.dart';
import '../providers/interface/llm_provider.dart';
import 'history_snapshot.dart';
import 'llm_chat_session_repository.dart';
import 'session_tool_types.dart';

/// Minimal [LlmChatSessionRepository] over an [LlmProvider] for demos/tests.
///
/// Tools, metadata, and async execution are inert; [watchHistory] mirrors
/// [Listenable] notifications on [provider].
class ProviderLlmChatSessionRepository implements LlmChatSessionRepository {
  ProviderLlmChatSessionRepository(this._provider) {
    _provider.addListener(_notify);
  }

  final LlmProvider _provider;

  final StreamController<HistorySnapshot> _updates =
      StreamController<HistorySnapshot>.broadcast();

  void _notify() => _updates.add(readSnapshot());

  @override
  HistorySnapshot readSnapshot() => HistorySnapshot(
        messages: List<ChatMessage>.from(_provider.history),
      );

  @override
  Stream<HistorySnapshot> watchHistory() async* {
    yield readSnapshot();
    yield* _updates.stream;
  }

  @override
  void replaceSessionMessages(Iterable<ChatMessage> messages) {
    _provider.history = messages;
  }

  @override
  Stream<String> sendMessageStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
    String? editedUserMessageId,
  }) =>
      _provider.sendMessageStream(
        prompt,
        attachments: attachments,
        editedUserMessageId: editedUserMessageId,
      );

  @override
  Stream<String> generateStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
  }) =>
      _provider.generateStream(prompt, attachments: attachments);

  @override
  Map<String, dynamic>? metadataForMessage(int index) => null;

  @override
  void setRequestedTools(List<SelectedChatTool>? tools) {}

  @override
  Future<Map<String, dynamic>> executeToolAsync({
    required String toolId,
    Map<String, dynamic> params = const {},
  }) =>
      Future.error(
        UnsupportedError('executeToolAsync not supported for provider bridge'),
      );

  @override
  void attachAsyncFirestoreSyncIfNeeded() {}

  @override
  void detachAsyncFirestoreSync() {}

  @override
  Future<Map<String, dynamic>> fetchIntroMessage() async => {};

  @override
  void dispose() {
    _provider.removeListener(_notify);
    unawaited(_updates.close());
  }
}
