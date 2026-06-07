// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fakes/fake_repositories.dart';

void main() {
  testWidgets('Smoke Test - send via ChatSessionBloc renders in LlmChatView', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: _BlocChatHarness()));

    final textField = find.byWidgetPredicate((widget) => widget is TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'Hello, World!');
    await tester.pump();

    final submitButton = find.byTooltip('Submit Message');
    expect(submitButton, findsOneWidget);
    await tester.tap(submitButton);
    await tester.pump();
    await tester.pumpAndSettle();

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is MarkdownBody &&
            widget.data != null &&
            widget.data!.contains('Hello, World!'),
      ),
      findsOneWidget,
    );
  });
}

class _BlocChatHarness extends StatefulWidget {
  const _BlocChatHarness();

  @override
  State<_BlocChatHarness> createState() => _BlocChatHarnessState();
}

class _BlocChatHarnessState extends State<_BlocChatHarness> {
  late final ChatSessionBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = ChatSessionBloc(
      chatSessionId: 'chat-1',
      chatRepository: FakePersistentChatSessionRepository(
        autoEchoAssistantReply: true,
      ),
      toolExecutionRepository: FakeAssyncToolExecutionRepository(),
      transcriptionRepository: FakeTranscriptionRepository(),
      cancelMessageLabel: 'CANCEL',
      errorMessageLabel: 'ERROR',
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        body: BlocBuilder<ChatSessionBloc, ChatState>(
          builder: (context, state) => LlmChatView(
            config: const ChatUiConfig(
              style: null,
              suggestions: [],
              welcomeMessage: null,
              responseBuilder: null,
              enableAttachments: true,
              enableVoiceNotes: true,
              attachmentActionBarBuilder: null,
              composerFooterBuilder: null,
              attachmentViewRegistry: null,
            ),
            state: state,
            onIntent: _bloc.submit,
          ),
        ),
      ),
    );
  }
}
