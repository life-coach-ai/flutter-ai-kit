import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChatToolIntent', () {
    test('fromData without clientIntent uses picker intent', () {
      final c = ChatToolIntent.fromData({
        'toolId': 'qi_men',
        'params': <String, dynamic>{},
      });
      expect(
        c.clientIntent,
        ChatToolMessageClientIntent.selectedFromAvailableTools,
      );
    });

    test('fromToolSelection defaults to picker intent', () {
      final c = ChatToolIntent.fromToolSelection(
        toolId: 'qi_men',
        params: {},
      );
      expect(
        c.clientIntent,
        ChatToolMessageClientIntent.selectedFromAvailableTools,
      );
    });

    test('toData round-trips clientIntent', () {
      const original = ChatToolIntent(
        toolId: 'qi_men',
        params: {},
        clientIntent: ChatToolMessageClientIntent.acceptedInlineRecommendation,
      );
      final again = ChatToolIntent.fromData(original.toData());
      expect(
        again.clientIntent,
        ChatToolMessageClientIntent.acceptedInlineRecommendation,
      );
    });
  });
}
