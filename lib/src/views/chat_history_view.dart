// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../providers/interface/chat_message.dart';
import '../providers/interface/message_origin.dart';
import '../styles/llm_chat_view_style.dart';
import 'chat_input/chat_suggestion_view.dart';
import 'chat_message_view/llm_message_view.dart';
import 'chat_message_view/user_message_view.dart';

/// Displays chat history built from explicit data (no repository/provider).
@immutable
class ChatHistoryView extends StatefulWidget {
  const ChatHistoryView({
    required this.history,
    required this.style,
    required this.suggestions,
    required this.welcomeMessage,
    this.onEditMessage,
    required this.onSelectSuggestion,
    required this.canEditLastUserMessage,
    super.key,
  });

  final Iterable<ChatMessage> history;

  final LlmChatViewStyle? style;

  final List<String> suggestions;

  final String? welcomeMessage;

  /// Non-null enables edit affordance when [canEditLastUserMessage].
  final void Function(ChatMessage message)? onEditMessage;

  final void Function(String suggestion) onSelectSuggestion;

  final bool canEditLastUserMessage;

  @override
  State<ChatHistoryView> createState() => _ChatHistoryViewState();
}

class _ChatHistoryViewState extends State<ChatHistoryView> {
  @override
  Widget build(BuildContext context) {
    final chatStyle = LlmChatViewStyle.resolve(widget.style);
    final padding =
        chatStyle.padding as EdgeInsets? ??
        const EdgeInsets.only(top: 16, left: 16, right: 16);
    final messageSpacing = chatStyle.messageSpacing ?? 6.0;

    final showWelcomeMessage = widget.welcomeMessage != null;
    final showSuggestions =
        widget.suggestions.isNotEmpty && widget.history.isEmpty;
    final history = [
      if (showWelcomeMessage)
        ChatMessage(
          origin: MessageOrigin.llm,
          text: widget.welcomeMessage,
          attachments: [],
        ),
      ...widget.history,
    ];

    return Padding(
      padding: padding,
      child: ListView.builder(
        reverse: true,
        itemCount: history.length + (showSuggestions ? 1 : 0),
        itemBuilder: (context, index) {
          if (showSuggestions) {
            index -= showWelcomeMessage ? 1 : 0;
            if (index == history.length - (showWelcomeMessage ? 2 : 0)) {
              return ChatSuggestionsView(
                suggestions: widget.suggestions,
                onSelectSuggestion: widget.onSelectSuggestion,
              );
            }
          }
          final messageIndex = history.length - index - 1;
          final message = history[messageIndex];
          final isLastUserMessage =
              message.origin.isUser && messageIndex >= history.length - 2;
          final canEdit =
              widget.canEditLastUserMessage &&
              isLastUserMessage &&
              widget.onEditMessage != null;
          final isUser = message.origin.isUser;

          return Padding(
            padding: EdgeInsets.only(top: messageSpacing),
            child:
                isUser
                    ? UserMessageView(
                      message,
                      onEdit:
                          canEdit
                              ? () => widget.onEditMessage!.call(message)
                              : null,
                    )
                    : LlmMessageView(
                      message,
                      isWelcomeMessage: messageIndex == 0,
                    ),
          );
        },
      ),
    );
  }
}
