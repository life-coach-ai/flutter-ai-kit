// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Smoke Test - Echo via ChatCubit', (tester) async {
    final echo = SimpleEchoProvider();
    final repo = ProviderLlmChatSessionRepository(echo);
    addTearDown(repo.dispose);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BlocProvider(
            create: (_) => ChatCubit(
              repository: repo,
              cancelMessageLabel: 'CANCEL',
              errorMessageLabel: 'ERROR',
            ),
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) => LlmChatView(
                config: const ChatUiConfig(
                  style: null,
                  suggestions: [],
                  welcomeMessage: null,
                  responseBuilder: null,
                  messageSender: null,
                  speechToText: null,
                  enableAttachments: true,
                  enableVoiceNotes: true,
                  attachmentActionBarBuilder: null,
                  composerFooterBuilder: null,
                  attachmentViewRegistry: null,
                ),
                state: state,
                onIntent: context.read<ChatCubit>().submit,
              ),
            ),
          ),
        ),
      ),
    );

    final textField = find.byWidgetPredicate((widget) => widget is TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'Hello, World!');
    await tester.pump();

    final submitButton = find.byTooltip('Submit Message');
    expect(submitButton, findsOneWidget);
    await tester.tap(submitButton);
    await tester.pump();
    await tester.pump(const Duration(seconds: 3));

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is MarkdownBody &&
            widget.data == 'prompt: Hello, World!\nattachments: []',
      ),
      findsOneWidget,
    );
  });
}

/// Same behaviour as the previous smoke [LlmProvider] stub.
class SimpleEchoProvider extends LlmProvider with ChangeNotifier {
  SimpleEchoProvider({Iterable<ChatMessage>? history})
      : _history = List<ChatMessage>.from(history ?? []);

  final List<ChatMessage> _history;

  @override
  Stream<String> generateStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
  }) async* {
    yield 'prompt: $prompt\n';
    yield 'attachments: ${attachments.isEmpty ? '[]' : attachments.map((a) => a.toString())}';
  }

  @override
  Stream<String> sendMessageStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
    String? editedUserMessageId,
  }) async* {
    final userMessage = ChatMessage.user(prompt, attachments);
    final llmMessage = ChatMessage.llm();
    _history.addAll([userMessage, llmMessage]);
    final chunks = generateStream(prompt, attachments: attachments);
    await for (final chunk in chunks) {
      llmMessage.append(chunk);
      yield chunk;
    }
    notifyListeners();
  }

  @override
  Iterable<ChatMessage> get history => _history;

  @override
  set history(Iterable<ChatMessage> history) {
    _history
      ..clear()
      ..addAll(history);
    notifyListeners();
  }
}
