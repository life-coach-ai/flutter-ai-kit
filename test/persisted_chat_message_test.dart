import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChatMessageBase.fromFirestore', () {
    test('parses user row with optional fields', () {
      final message = ChatMessageBase.fromFirestore(
        {
          'origin': 'user',
          'text': 'Hello',
          'client_uuid': 'client-1',
          'client_timestamp': '2026-06-05T10:00:00Z',
          'server_timestamp': '2026-06-05T10:00:01Z',
          'version': 2,
          'edited_message_id': 'prev-uuid',
          'user_location': {'latitude': 50.1, 'longitude': 14.4},
          'chat_tool_intents': [
            {
              'tool_id': 'qi_men',
              'client_intent': 'tool_execution_requested',
              'source': 'from_available_tools_ui',
              'params': {'day': 'today'},
            },
          ],
        },
        documentId: 'server-user-1',
      );

      expect(message, isA<UserChatMessage>());
      final user = message as UserChatMessage;
      expect(user.serverUuid, 'server-user-1');
      expect(user.text, 'Hello');
      expect(user.clientUuid, 'client-1');
      expect(user.version, 2);
      expect(user.editedMessageId, 'prev-uuid');
      expect(user.userLocation?.latitude, 50.1);
      expect(user.chatToolIntents, hasLength(1));
      expect(user.chatToolIntents!.first.toolId, 'qi_men');
    });

    test('parses assistant row and normalizes unknown generation_status', () {
      final message = ChatMessageBase.fromFirestore(
        {
          'origin': 'assistant',
          'text': 'Hi there',
          'server_uuid': 'server-assist-1',
          'generation_status': 'generating',
          'parent_message_uuid': 'server-user-1',
          'processing_state': 'tool_step',
          'metadata': {'available_tools': []},
        },
      );

      expect(message, isA<AssistantChatMessage>());
      final assistant = message as AssistantChatMessage;
      expect(assistant.generationStatus, AssistantGenerationStatus.generating);
      expect(assistant.parentMessageUuid, 'server-user-1');
      expect(assistant.processingState, 'tool_step');
      expect(assistant.metadata, {'available_tools': []});
    });

    test('defaults invalid generation_status to completed', () {
      final message = ChatMessageBase.fromFirestore(
        {
          'origin': 'assistant',
          'text': 'Done',
          'server_uuid': 'a-2',
          'generation_status': 'unknown',
        },
      ) as AssistantChatMessage;

      expect(message.generationStatus, AssistantGenerationStatus.completed);
    });

    test('toFirestore round-trips user message fields', () {
      const original = UserChatMessage(
        text: 'Ping',
        serverUuid: 'srv-1',
        clientUuid: 'cli-1',
        serverTimestamp: null,
        clientTimestamp: null,
        version: 1,
        editedMessageId: 'old-1',
      );

      final again = ChatMessageBase.fromFirestore(original.toFirestore());
      expect(again, original);
    });

    test('toFirestore round-trips assistant message fields', () {
      const original = AssistantChatMessage(
        text: 'Pong',
        serverUuid: 'srv-2',
        generationStatus: AssistantGenerationStatus.pending,
        parentMessageUuid: 'srv-1',
        metadata: {'k': 'v'},
      );

      final again = ChatMessageBase.fromFirestore(original.toFirestore());
      expect(again, original);
    });
  });
}
