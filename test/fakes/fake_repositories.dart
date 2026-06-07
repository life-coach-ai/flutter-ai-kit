import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';

class FakePersistentChatSessionRepository
    implements PersistentChatSessionRepository {
  FakePersistentChatSessionRepository({this.autoEchoAssistantReply = false}) {
    _historyController = StreamController<List<ChatMessageBase>>.broadcast();
    _sessionController = StreamController<ChatSession?>.broadcast();
  }

  /// When true, [sendUserChatMessage] emits generating then completed assistant
  /// history — simulating Firestore-backed streaming for widget tests.
  final bool autoEchoAssistantReply;

  late final StreamController<List<ChatMessageBase>> _historyController;
  late final StreamController<ChatSession?> _sessionController;
  final sentMessages = <SentMessage>[];

  void emitHistory(List<ChatMessageBase> messages) {
    _historyController.add(messages);
  }

  void emitSession(ChatSession? session) {
    _sessionController.add(session);
  }

  @override
  Stream<List<ChatMessageBase>> watchChatMessageHistory(String chatSessionId) =>
      _historyController.stream;

  @override
  Stream<ChatSession?> watchChatSession(String chatSessionId) =>
      _sessionController.stream;

  @override
  Future<MessageAck> sendUserChatMessage({
    required String chatSessionId,
    required String clientMessageUuid,
    required String userMessageText,
    String? editedMessageUuid,
    UserLocation? userLocation,
    List<PersistedChatToolIntent> chatToolIntents = const [],
    List<ToolExecutionIntentRequest> activeToolExecutionIntents = const [],
    int messageVersion = 1,
  }) async {
    sentMessages.add(
      SentMessage(
        clientMessageUuid: clientMessageUuid,
        userMessageText: userMessageText,
        editedMessageUuid: editedMessageUuid,
        chatToolIntents: chatToolIntents,
      ),
    );

    if (autoEchoAssistantReply) {
      final userUuid = 'server-$clientMessageUuid';
      final assistantUuid = 'assistant-$clientMessageUuid';
      emitHistory([
        UserChatMessage(
          text: userMessageText,
          serverUuid: userUuid,
          clientUuid: clientMessageUuid,
        ),
        AssistantChatMessage(
          text: '',
          serverUuid: assistantUuid,
          generationStatus: AssistantGenerationStatus.generating,
        ),
      ]);
      scheduleMicrotask(() {
        emitHistory([
          UserChatMessage(
            text: userMessageText,
            serverUuid: userUuid,
            clientUuid: clientMessageUuid,
          ),
          AssistantChatMessage(
            text: userMessageText,
            serverUuid: assistantUuid,
            generationStatus: AssistantGenerationStatus.completed,
          ),
        ]);
      });
    }

    return MessageAck(
      clientMessageUuid: clientMessageUuid,
      serverMessageUuid: 'server-$clientMessageUuid',
      serverMessageTimestamp: DateTime.utc(2026),
      assistantMessageUuid: 'assistant-$clientMessageUuid',
      ack: true,
      ackType: MessageAckType.sendMessage,
    );
  }

  @override
  Future<MessageAck> cancelUserChatMessage({
    required String chatSessionId,
    required String messageUuid,
  }) async =>
      MessageAck(
        clientMessageUuid: messageUuid,
        serverMessageUuid: messageUuid,
        serverMessageTimestamp: DateTime.utc(2026),
        assistantMessageUuid: messageUuid,
        ack: true,
        ackType: MessageAckType.cancelMessage,
      );
}

class SentMessage {
  SentMessage({
    required this.clientMessageUuid,
    required this.userMessageText,
    this.editedMessageUuid,
    this.chatToolIntents = const [],
  });

  final String clientMessageUuid;
  final String userMessageText;
  final String? editedMessageUuid;
  final List<PersistedChatToolIntent> chatToolIntents;
}

class FakeAssyncToolExecutionRepository
    implements AssyncToolExecutionRepository {
  FakeAssyncToolExecutionRepository() {
    _controller = StreamController<List<ActiveToolExecutionSummary>>.broadcast();
  }

  late final StreamController<List<ActiveToolExecutionSummary>> _controller;

  void emitExecutions(List<ActiveToolExecutionSummary> executions) {
    _controller.add(executions);
  }

  @override
  Stream<List<ActiveToolExecutionSummary>> watchToolExecutions(
    String chatSessionId,
  ) =>
      _controller.stream;

  @override
  Future<void> executeToolAsync({
    required String chatSessionId,
    required SelectedChatTool selectedChatTool,
  }) async {}

  @override
  Future<void> cancelToolExecution({
    required String chatSessionId,
    required String toolExecutionId,
  }) async {}
}

class FakeTranscriptionRepository implements TranscriptionRepository {
  FakeTranscriptionRepository({this.transcribeResult = ''});

  final String transcribeResult;
  int transcribeCalls = 0;

  @override
  Future<String> transcribe(XFile audioFile) async {
    transcribeCalls++;
    return transcribeResult;
  }
}
