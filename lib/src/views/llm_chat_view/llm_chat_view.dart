// Copyright 2024 The Flutter Authors. All rights reserved.

import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:flutter/widgets.dart';

import '../../chat_session/chat_intent.dart';
import '../../chat_session/chat_state.dart';
import '../../chat_view_model/chat_ui_config.dart';
import '../../chat_view_model/chat_ui_config_provider.dart';
import '../../styles/llm_chat_view_style.dart';

import '../chat_history_view.dart';
import '../chat_input/chat_input.dart';
import '../chat_input/composer_draft_controller.dart';
import '../../providers/interface/attachments.dart' show Attachment;

/// Full chat shell: [ChatUiConfig] for styles/builders; [ChatState] from parent [ChatCubit].
///
/// Cubit-agnostic — parent maps [BlocBuilder] → [state] and wires [onIntent].
@immutable
class LlmChatView extends StatefulWidget {
  const LlmChatView({
    required this.config,
    required this.state,
    required this.onIntent,
    this.autofocus,
    this.composerDraftController,
    super.key,
  });

  final ChatUiConfig config;

  final ChatState state;

  final Future<void> Function(ChatIntent intent) onIntent;

  final bool? autofocus;

  final ComposerDraftController? composerDraftController;

  @override
  State<LlmChatView> createState() => _LlmChatViewState();
}

class _LlmChatViewState extends State<LlmChatView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  bool get _canEdit =>
      !widget.state.isSending &&
      !widget.state.isStreamingAssistant &&
      !widget.state.isTranscribing &&
      widget.state.composerInitialMessage == null &&
      widget.state.pendingEditAssistantCopy == null;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final chatStyle = LlmChatViewStyle.resolve(widget.config.style);
    return ChatUiConfigProvider(
      config: widget.config,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          color: chatStyle.backgroundColor,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ChatHistoryView(
                      history: widget.state.visibleMessages,
                      style: widget.config.style,
                      suggestions: widget.config.suggestions,
                      welcomeMessage: widget.config.welcomeMessage,
                      canEditLastUserMessage: _canEdit,
                      onEditMessage:
                          _canEdit
                              ? (_) =>
                                  unawaited(widget.onIntent(
                                    const ChatIntent.startEditLastTurn(),
                                  ))
                              : null,
                      onSelectSuggestion:
                          (s) => unawaited(
                            widget.onIntent(
                              ChatIntent.selectSuggestion(s),
                            ),
                          ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: ChatInput(
                  initialMessage: widget.state.composerInitialMessage,
                  autofocus:
                      widget.autofocus ??
                      widget.config.suggestions.isEmpty,
                  onCancelEdit:
                      widget.state.pendingEditAssistantCopy != null &&
                              widget.state.composerInitialMessage != null
                          ? () => unawaited(
                              widget.onIntent(const ChatIntent.cancelEdit()),
                            )
                          : null,
                  onSendMessage: (prompt, attachments) => unawaited(
                    widget.onIntent(
                      ChatIntent.sendMessage(
                        text: prompt,
                        attachments: attachments,
                      ),
                    ),
                  ),
                  onCancelMessage:
                      widget.state.isSending || widget.state.isStreamingAssistant
                          ? () =>
                                unawaited(widget.onIntent(const ChatIntent.cancelStream()))
                          : null,
                  onTranslateStt:
                      widget.config.enableVoiceNotes
                          ? (file, attachments) => unawaited(
                              widget.onIntent(
                                ChatIntent.translateSpeechToText(
                                  file: file,
                                  currentAttachments: attachments,
                                ),
                              ),
                            )
                          : (XFile _, Iterable<Attachment> _) {},
                  onCancelStt:
                      widget.state.isTranscribing
                          ? () =>
                                unawaited(
                                  widget.onIntent(
                                    const ChatIntent.cancelSpeechToText(),
                                  ),
                                )
                          : null,
                  attachmentActionBarBuilder:
                      widget.config.attachmentActionBarBuilder,
                  composerFooterBuilder:
                      widget.config.composerFooterBuilder,
                  draftController: widget.composerDraftController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
