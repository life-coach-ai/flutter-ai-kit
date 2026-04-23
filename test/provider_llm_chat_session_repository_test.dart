import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProviderLlmChatSessionRepository', () {
    test('readSnapshot tracks provider history mutations', () {
      final echo = EchoProvider();
      final repo = ProviderLlmChatSessionRepository(echo);
      addTearDown(repo.dispose);

      expect(repo.readSnapshot().messages, isEmpty);

      echo.history = [
        ChatMessage.user('x', const []),
      ];
      expect(repo.readSnapshot().messages.length, 1);
      expect(repo.readSnapshot().messages.single.text, 'x');
    });
  });
}
