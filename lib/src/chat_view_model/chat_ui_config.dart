// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:flutter/foundation.dart';

import '../providers/interface/llm_provider.dart';
import '../styles/llm_chat_view_style.dart';
import '../views/attachment_action_bar_builder.dart'
    show AttachmentActionBarBuilder, ComposerFooterBuilder;
import '../views/attachment_view_registry.dart';
import '../views/response_builder.dart';

/// Immutable shell configuration (styles, builders, attachments) — no session.
@immutable
class ChatUiConfig {
  const ChatUiConfig({
    required this.style,
    required this.suggestions,
    required this.welcomeMessage,
    required this.responseBuilder,
    required this.messageSender,
    required this.speechToText,
    required this.enableAttachments,
    required this.enableVoiceNotes,
    required this.attachmentActionBarBuilder,
    this.composerFooterBuilder,
    required this.attachmentViewRegistry,
  });

  final LlmChatViewStyle? style;

  final List<String> suggestions;

  final String? welcomeMessage;

  final ResponseBuilder? responseBuilder;

  final LlmStreamGenerator? messageSender;

  final SpeechToTextConverter? speechToText;

  final bool enableAttachments;

  final bool enableVoiceNotes;

  final AttachmentActionBarBuilder? attachmentActionBarBuilder;

  final ComposerFooterBuilder? composerFooterBuilder;

  final AttachmentViewRegistry? attachmentViewRegistry;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChatUiConfig &&
          other.style == style &&
          other.suggestions == suggestions &&
          other.welcomeMessage == welcomeMessage &&
          other.responseBuilder == responseBuilder &&
          other.messageSender == messageSender &&
          other.speechToText == speechToText &&
          other.enableAttachments == enableAttachments &&
          other.enableVoiceNotes == enableVoiceNotes &&
          other.attachmentActionBarBuilder == attachmentActionBarBuilder &&
          other.composerFooterBuilder == composerFooterBuilder &&
          other.attachmentViewRegistry == attachmentViewRegistry);

  @override
  int get hashCode => Object.hash(
        style,
        suggestions,
        welcomeMessage,
        responseBuilder,
        messageSender,
        speechToText,
        enableAttachments,
        enableVoiceNotes,
        attachmentActionBarBuilder,
        composerFooterBuilder,
        attachmentViewRegistry,
      );
}
