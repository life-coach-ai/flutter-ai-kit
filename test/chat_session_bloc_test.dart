import 'dart:typed_data';

import 'package:cross_file/cross_file.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fakes/fake_repositories.dart';

void main() {
  group('persistedMessagesToUi', () {
    test('maps user and assistant rows', () {
      final messages = persistedMessagesToUi([
        const UserChatMessage(
          text: 'hello',
          serverUuid: 'user-1',
        ),
        const AssistantChatMessage(
          text: 'hi there',
          serverUuid: 'assistant-1',
          metadata: {'yi_jing_hexagram': 1},
        ),
      ]);

      expect(messages, hasLength(2));
      expect(messages.first.text, 'hello');
      expect(messages.first.serverUuid, 'user-1');
      expect(messages.last.text, 'hi there');
      expect(messages.last.metadata?['yi_jing_hexagram'], 1);
    });
  });

  group('ChatSession.availableTools', () {
    test('parses available_tools objects when present', () {
      final session = ChatSession.fromJson(
        {
          'title': 't',
          'flavour_id': 'f',
          'available_tools': [
            {'tool_id': 'qi_men', 'mandatory': true},
            {'tool_id': 'yi_jing', 'mandatory': false},
          ],
        },
        id: 'chat-1',
      );

      expect(session.availableTools, hasLength(2));
      expect(session.availableTools.first.toolId, 'qi_men');
      expect(session.availableTools.first.mandatory, isTrue);
      expect(session.availableToolIds, ['qi_men', 'yi_jing']);
    });

    test('returns empty list when available_tools is missing', () {
      final session = ChatSession.fromJson(
        {
          'title': 't',
          'flavour_id': 'f',
        },
        id: 'chat-1',
      );

      expect(session.availableTools, isEmpty);
    });
  });

  group('ChatSessionBloc', () {
    test('history snapshot from repositories appears in state', () async {
      final chatRepo = FakePersistentChatSessionRepository();
      final toolRepo = FakeAssyncToolExecutionRepository();
      final transcriptionRepo = FakeTranscriptionRepository();

      final bloc = ChatSessionBloc(
        chatSessionId: 'chat-1',
        chatRepository: chatRepo,
        toolExecutionRepository: toolRepo,
        transcriptionRepository: transcriptionRepo,
        cancelMessageLabel: 'CANCEL',
        errorMessageLabel: 'ERROR',
      );
      addTearDown(bloc.close);

      chatRepo.emitHistory([
        const UserChatMessage(text: 'hello', serverUuid: 'u1'),
        const AssistantChatMessage(
          text: 'there',
          serverUuid: 'a1',
          generationStatus: AssistantGenerationStatus.completed,
        ),
      ]);

      await bloc.stream.firstWhere(
        (state) => state.visibleMessages.length == 2,
      );

      expect(bloc.state.visibleMessages.last.text, 'there');
    });

    test('session document supplies available tools', () async {
      final chatRepo = FakePersistentChatSessionRepository();
      final toolRepo = FakeAssyncToolExecutionRepository();
      final transcriptionRepo = FakeTranscriptionRepository();

      final bloc = ChatSessionBloc(
        chatSessionId: 'chat-1',
        chatRepository: chatRepo,
        toolExecutionRepository: toolRepo,
        transcriptionRepository: transcriptionRepo,
        cancelMessageLabel: 'CANCEL',
        errorMessageLabel: 'ERROR',
      );
      addTearDown(bloc.close);

      chatRepo.emitSession(
        ChatSession(
          id: 'chat-1',
          title: 't',
          flavourId: 'f',
          createdAt: DateTime.utc(2026),
          availableTools: const [
            AvailableToolInfo(toolId: 'qi_men', mandatory: true),
          ],
        ),
      );

      await bloc.stream.firstWhere(
        (state) => state.availableTools.isNotEmpty,
      );

      expect(bloc.state.availableTools.single.toolId, 'qi_men');
      expect(bloc.state.availableTools.single.mandatory, isTrue);
    });

    test('sendMessage calls repository and clears isSending after ack', () async {
      final chatRepo = FakePersistentChatSessionRepository();
      final toolRepo = FakeAssyncToolExecutionRepository();
      final transcriptionRepo = FakeTranscriptionRepository();

      final bloc = ChatSessionBloc(
        chatSessionId: 'chat-1',
        chatRepository: chatRepo,
        toolExecutionRepository: toolRepo,
        transcriptionRepository: transcriptionRepo,
        cancelMessageLabel: 'CANCEL',
        errorMessageLabel: 'ERROR',
      );
      addTearDown(bloc.close);

      await bloc.submit(const ChatIntent.sendMessage(text: 'hi'));
      await bloc.stream.firstWhere((state) => !state.isSending);

      expect(chatRepo.sentMessages, hasLength(1));
      expect(chatRepo.sentMessages.single.userMessageText, 'hi');
      expect(bloc.state.isStreamingAssistant, isTrue);
    });

    test('assistant generation status drives isStreamingAssistant', () async {
      final chatRepo = FakePersistentChatSessionRepository();
      final toolRepo = FakeAssyncToolExecutionRepository();
      final transcriptionRepo = FakeTranscriptionRepository();

      final bloc = ChatSessionBloc(
        chatSessionId: 'chat-1',
        chatRepository: chatRepo,
        toolExecutionRepository: toolRepo,
        transcriptionRepository: transcriptionRepo,
        cancelMessageLabel: 'CANCEL',
        errorMessageLabel: 'ERROR',
      );
      addTearDown(bloc.close);

      chatRepo.emitHistory([
        const UserChatMessage(text: 'hi', serverUuid: 'u1'),
        const AssistantChatMessage(
          text: '',
          serverUuid: 'a1',
          generationStatus: AssistantGenerationStatus.generating,
        ),
      ]);

      await bloc.stream.firstWhere((state) => state.isStreamingAssistant);

      chatRepo.emitHistory([
        const UserChatMessage(text: 'hi', serverUuid: 'u1'),
        const AssistantChatMessage(
          text: 'done',
          serverUuid: 'a1',
          generationStatus: AssistantGenerationStatus.completed,
        ),
      ]);

      await bloc.stream.firstWhere((state) => !state.isStreamingAssistant);
      expect(bloc.state.visibleMessages.last.text, 'done');
    });

    test('transcription populates composer draft message', () async {
      final chatRepo = FakePersistentChatSessionRepository();
      final toolRepo = FakeAssyncToolExecutionRepository();
      final transcriptionRepo = FakeTranscriptionRepository(
        transcribeResult: 'spoken text',
      );

      final bloc = ChatSessionBloc(
        chatSessionId: 'chat-1',
        chatRepository: chatRepo,
        toolExecutionRepository: toolRepo,
        transcriptionRepository: transcriptionRepo,
        cancelMessageLabel: 'CANCEL',
        errorMessageLabel: 'ERROR',
      );
      addTearDown(bloc.close);

      await bloc.submit(
        ChatIntent.translateSpeechToText(
          file: XFile.fromData(
            Uint8List.fromList([1, 2, 3]),
            name: 'note.wav',
          ),
          currentAttachments: const [],
        ),
      );

      await bloc.stream.firstWhere(
        (state) => state.composerInitialMessage?.text == 'spoken text',
      );

      expect(bloc.state.isTranscribing, isFalse);
      expect(transcriptionRepo.transcribeCalls, 1);
    });

    test('sendMessage forwards chat tool attachments as persisted intents', () async {
      final chatRepo = FakePersistentChatSessionRepository();
      final toolRepo = FakeAssyncToolExecutionRepository();
      final transcriptionRepo = FakeTranscriptionRepository();

      final bloc = ChatSessionBloc(
        chatSessionId: 'chat-1',
        chatRepository: chatRepo,
        toolExecutionRepository: toolRepo,
        transcriptionRepository: transcriptionRepo,
        cancelMessageLabel: 'CANCEL',
        errorMessageLabel: 'ERROR',
      );
      addTearDown(bloc.close);

      await bloc.submit(
        ChatIntent.sendMessage(
          text: 'run tool',
          attachments: [
            CustomAttachment(
              name: 'qi_men',
              customType: 'chat_tool',
              data: ChatToolIntent.fromToolSelection(
                toolId: 'qi_men',
                params: const {'calculation_type': 'hour'},
              ).toData(),
            ),
          ],
        ),
      );
      await bloc.stream.firstWhere((state) => !state.isSending);

      expect(chatRepo.sentMessages, hasLength(1));
      final intents = chatRepo.sentMessages.single.chatToolIntents;
      expect(intents, hasLength(1));
      expect(intents.single.toolId, 'qi_men');
      expect(
        intents.single.clientIntent,
        MessageToolClientIntent.toolExecutionRequested,
      );
      expect(
        intents.single.source,
        ChatToolIntentSource.fromAvailableToolsUi,
      );
    });
  });

  group('attachmentsToPersistedChatToolIntents', () {
    test('maps inline recommendation intent', () {
      final intents = attachmentsToPersistedChatToolIntents([
        CustomAttachment(
          name: 'yi_jing',
          customType: 'chat_tool',
          data: ChatToolIntent.fromToolSelection(
            toolId: 'yi_jing',
            params: const {},
            clientIntent:
                ChatToolMessageClientIntent.acceptedInlineRecommendation,
          ).toData(),
        ),
      ]);

      expect(intents.single.clientIntent,
          MessageToolClientIntent.toolRecommendationAccepted);
      expect(intents.single.source,
          ChatToolIntentSource.fromInlineToolRecommendationUi);
    });
  });
}
