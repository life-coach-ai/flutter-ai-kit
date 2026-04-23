// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../llm_exception.dart';

part 'chat_ui_effect.freezed.dart';

/// One-time UI side effects — consume in [BlocListener]; not long-lived state.
@freezed
class ChatUiEffect with _$ChatUiEffect {
  const factory ChatUiEffect.cancelNotice() = _CancelNotice;

  const factory ChatUiEffect.showLlmException({
    required LlmException error,
  }) = _ShowLlmException;
}
