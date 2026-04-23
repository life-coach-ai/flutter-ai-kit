import 'dart:async' show unawaited;

import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_ai_toolkit/src/views/chat_input/chat_suggestion_view.dart';
import 'package:flutter_ai_toolkit/src/views/chat_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Suggestions - Welcome message overlap tests', () {
    Widget harness(int suggestionsCount, {bool? autofocus}) =>
        _SuggestionChatHarness(
          suggestionsCount: suggestionsCount,
          autofocus: autofocus,
        );

    testWidgets('Welcome message without suggestions', (tester) async {
      await tester.pumpWidget(harness(0));

      // Suggestions must not be visible
      final suggestionsView = find.byType(ChatSuggestionsView);
      expect(suggestionsView, findsNothing);

      // ChatTextField must be autofocus true and TextField must be focused
      final chatTextField = find.byType(ChatTextField);
      final textField = find.byType(TextField);
      expect((tester.widget<ChatTextField>(chatTextField)).autofocus, true);
      expect((tester.widget<TextField>(textField)).focusNode?.hasFocus, true);
    });
    testWidgets('Welcome message with a few suggestions', (tester) async {
      await tester.pumpWidget(harness(6));

      // Suggestions must be visible
      Finder suggestionsView = find.byType(ChatSuggestionsView);
      expect(suggestionsView, findsOne);

      // Suggestions must be a child of ListView
      final listView = find.ancestor(
        of: suggestionsView,
        matching: find.byType(ListView),
      );
      expect(listView, findsOne);

      // ChatTextField must be autofocus false and TextField must not be focused
      final chatTextField = find.byType(ChatTextField);
      final textField = find.byType(TextField);
      expect((tester.widget<ChatTextField>(chatTextField)).autofocus, false);
      expect((tester.widget<TextField>(textField)).focusNode?.hasFocus, false);

      // Show keyboard and write something to focus it
      await tester.showKeyboard(textField);
      await tester.enterText(textField, 'Hi');
      // Changing viewInsets bottom padding to simulate keyboard showing
      tester.view.viewInsets = FakeViewPadding(
        bottom: tester.view.viewInsets.bottom + 5,
      );
      await tester.pumpAndSettle();

      // Suggestions must still be visible now
      suggestionsView = find.byType(ChatSuggestionsView);
      expect(suggestionsView, findsOne);

      // TextField must be focused now
      expect((tester.widget<TextField>(textField)).focusNode?.hasFocus, true);
    });
    testWidgets('force autofocus false even if no suggestions provided', (
      tester,
    ) async {
      // No suggestions provided, but autofocus is set to false
      await tester.pumpWidget(harness(0, autofocus: false));

      // ChatTextField must be autofocus false and TextField must not be focused
      // because parameter is set to false
      final chatTextField = find.byType(ChatTextField);
      final textField = find.byType(TextField);
      expect((tester.widget<ChatTextField>(chatTextField)).autofocus, false);
      expect((tester.widget<TextField>(textField)).focusNode?.hasFocus, false);
    });
    testWidgets('force autofocus true even if suggestions provided', (
      tester,
    ) async {
      // Suggestions provided, but autofocus is set to true
      await tester.pumpWidget(harness(40, autofocus: true));

      // ChatTextField must be autofocus true and TextField must be focused
      // because parameter is set to true
      final chatTextField = find.byType(ChatTextField);
      final textField = find.byType(TextField);
      expect((tester.widget<ChatTextField>(chatTextField)).autofocus, true);
      expect((tester.widget<TextField>(textField)).focusNode?.hasFocus, true);
    });
    testWidgets('Welcome message with a lot of suggestions allowing scroll', (
      tester,
    ) async {
      await tester.pumpWidget(harness(40));

      // Suggestions must be visible
      final suggestionsView = find.byType(ChatSuggestionsView);
      expect(suggestionsView, findsOne);

      // Ensure the ChatSuggestionsView is inside a Scrollable
      final scrollable = find.ancestor(
        of: suggestionsView,
        matching: find.byType(Scrollable),
      );
      expect(scrollable, findsOne);

      // Get the ScrollableState to access the current scroll position
      final scrollableState = tester.state<ScrollableState>(scrollable);

      // Perform a scroll gesture
      await tester.drag(scrollable, const Offset(0, 200));
      await tester.pumpAndSettle();

      // Check that the scroll position has changed
      expect(scrollableState.position.pixels, isNot(0));
    });
  });
}

class _SuggestionChatHarness extends StatefulWidget {
  const _SuggestionChatHarness({
    required this.suggestionsCount,
    this.autofocus,
  });

  final int suggestionsCount;
  final bool? autofocus;

  @override
  State<_SuggestionChatHarness> createState() =>
      _SuggestionChatHarnessState();
}

class _SuggestionChatHarnessState extends State<_SuggestionChatHarness> {
  late final EchoProvider _echo;
  late final ProviderLlmChatSessionRepository _repo;
  late final ChatCubit _cubit;

  static const _welcome =
      'Hello! This is the Flutter AI Assistant, how can I help you today?';

  @override
  void initState() {
    super.initState();
    _echo = EchoProvider();
    _repo = ProviderLlmChatSessionRepository(_echo);
    _cubit = ChatCubit(
      repository: _repo,
      cancelMessageLabel: 'CANCEL',
      errorMessageLabel: 'ERROR',
    );
  }

  @override
  void dispose() {
    unawaited(_cubit.close());
    _repo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Title')),
        body: BlocProvider.value(
          value: _cubit,
          child: BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) => LlmChatView(
              config: ChatUiConfig(
                style: null,
                suggestions: List.generate(
                  widget.suggestionsCount,
                  (index) => 'Suggestion sample ${index + 1}',
                ),
                welcomeMessage: _welcome,
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
              autofocus: widget.autofocus,
            ),
          ),
        ),
      ),
    );
  }
}
