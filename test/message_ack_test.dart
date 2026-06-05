import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MessageAck.fromJson', () {
    test('parses full SendChatMessageResponse payload', () {
      final ack = MessageAck.fromJson({
        'client_message_uuid': 'client-1',
        'server_message_uuid': 'server-1',
        'server_message_timestamp': '2026-06-05T12:00:00.000Z',
        'assistant_message_uuid': 'assistant-1',
        'ack': true,
        'ack_type': 'editMessage',
      });

      expect(ack.clientMessageUuid, 'client-1');
      expect(ack.serverMessageUuid, 'server-1');
      expect(
        ack.serverMessageTimestamp,
        DateTime.parse('2026-06-05T12:00:00.000Z'),
      );
      expect(ack.assistantMessageUuid, 'assistant-1');
      expect(ack.ack, isTrue);
      expect(ack.ackType, MessageAckType.editMessage);
    });
  });

  group('ToolExecutionIntentRequest', () {
    test('round-trips backend JSON shape', () {
      const request = ToolExecutionIntentRequest(
        executionId: 'exec-1',
        toolId: 'qi_men',
        clientIntent: ActiveToolExecutionClientIntent.continueTurn,
        source: ActiveToolExecutionIntentSource.recognizedFromToolExecutionUi,
        params: {'step': 2},
      );

      final json = request.toJson();
      expect(json['execution_id'], 'exec-1');
      expect(json['tool_id'], 'qi_men');
      expect(json['client_intent'], 'continue_turn');
      expect(json['source'], 'recognized_from_tool_execution_ui');
      expect(json['params'], {'step': 2});

      final parsed = ToolExecutionIntentRequest.fromJson(json);
      expect(parsed, request);
    });
  });
}
