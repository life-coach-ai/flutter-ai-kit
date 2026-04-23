import 'dart:async';

import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChatCubit', () {
    test('history snapshot from repository appears in state', () async {
      final repo = FakeLlmChatSessionRepository(
        initialMessages: [
          ChatMessage.user('hello', const []),
          ChatMessage.llm()..append('there'),
        ],
      );
      final cubit = ChatCubit(
        repository: repo,
        cancelMessageLabel: 'CANCEL',
        errorMessageLabel: 'ERROR',
      );
      addTearDown(() async {
        await cubit.close();
        repo.dispose();
      });

      expect(cubit.state.visibleMessages.length, 2);
      expect(cubit.state.visibleMessages.last.text, 'there');
    });

    test('sendMessage runs stream and updates visible history', () async {
      final repo = FakeLlmChatSessionRepository();
      final cubit = ChatCubit(
        repository: repo,
        cancelMessageLabel: 'CANCEL',
        errorMessageLabel: 'ERROR',
      );
      addTearDown(() async {
        await cubit.close();
        repo.dispose();
      });

      final done = cubit.stream.firstWhere(
        (s) =>
            s.visibleMessages.length == 2 &&
            s.visibleMessages.last.text == 'ab' &&
            !s.isSending,
      );
      await cubit.submit(const ChatIntent.sendMessage(text: 'hi'));
      await done.timeout(const Duration(seconds: 2));

      expect(cubit.state.visibleMessages.first.text, 'hi');
      expect(cubit.state.visibleMessages.last.origin.isLlm, true);
      expect(cubit.state.visibleMessages.last.text, 'ab');
    });
  });
}

/// Minimal fake: pull+stream history model with explicit [sendMessageStream].
class FakeLlmChatSessionRepository implements LlmChatSessionRepository {
  FakeLlmChatSessionRepository({
    List<ChatMessage>? initialMessages,
  }) : _messages = List<ChatMessage>.from(initialMessages ?? []) {
    _updates = StreamController<HistorySnapshot>.broadcast();
  }

  List<ChatMessage> _messages;
  late final StreamController<HistorySnapshot> _updates;

  void _emit() {
    if (!_updates.isClosed) {
      _updates.add(readSnapshot());
    }
  }

  @override
  HistorySnapshot readSnapshot() =>
      HistorySnapshot(messages: List<ChatMessage>.from(_messages));

  @override
  Stream<HistorySnapshot> watchHistory() async* {
    yield readSnapshot();
    yield* _updates.stream;
  }

  @override
  void replaceSessionMessages(Iterable<ChatMessage> messages) {
    _messages = List<ChatMessage>.from(messages);
    _emit();
  }

  @override
  Stream<String> sendMessageStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
    String? editedUserMessageId,
  }) async* {
    final user = ChatMessage.user(prompt, attachments);
    final llm = ChatMessage.llm();
    _messages = [..._messages, user, llm];
    _emit();
    for (final c in ['a', 'b']) {
      llm.append(c);
      yield c;
      _emit();
    }
  }

  @override
  Stream<String> generateStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
  }) =>
      Stream<String>.empty();

  @override
  Map<String, dynamic>? metadataForMessage(int index) => null;

  @override
  void setRequestedTools(List<SelectedChatTool>? tools) {}

  @override
  Future<Map<String, dynamic>> executeToolAsync({
    required String toolId,
    Map<String, dynamic> params = const {},
  }) =>
      Future.error(UnimplementedError());

  @override
  void attachAsyncFirestoreSyncIfNeeded() {}

  @override
  void detachAsyncFirestoreSync() {}

  @override
  Future<Map<String, dynamic>> fetchIntroMessage() async => {};

  @override
  void dispose() {
    unawaited(_updates.close());
  }
}
