// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../providers/interface/attachments.dart';

part 'chat_intent.freezed.dart';

/// User/product intents from Cubit-agnostic kit widgets (single sink).
@freezed
class ChatIntent with _$ChatIntent {
  const factory ChatIntent.sendMessage({
    required String text,
    @Default(<Attachment>[]) Iterable<Attachment> attachments,
    String? editedUserMessageId,
  }) = _SendMessage;

  const factory ChatIntent.cancelStream() = _CancelStream;

  const factory ChatIntent.startEditLastTurn() = _StartEditLastTurn;

  const factory ChatIntent.cancelEdit() = _CancelEdit;

  const factory ChatIntent.selectSuggestion(String suggestion) =
      _SelectSuggestion;

  const factory ChatIntent.translateSpeechToText({
    required XFile file,
    required Iterable<Attachment> currentAttachments,
  }) = _TranslateSpeechToText;

  const factory ChatIntent.cancelSpeechToText() = _CancelSpeechToText;
}
