// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:flutter/widgets.dart';

import 'chat_ui_config.dart';

/// Provides [ChatUiConfig] to descendant widgets (styles/builders).
@immutable
class ChatUiConfigProvider extends InheritedWidget {
  const ChatUiConfigProvider({
    required super.child,
    required this.config,
    super.key,
  });

  final ChatUiConfig config;

  static ChatUiConfig of(BuildContext context) {
    final cfg = maybeOf(context);
    assert(cfg != null, 'No ChatUiConfigProvider found in context');
    return cfg!;
  }

  static ChatUiConfig? maybeOf(BuildContext context) =>
      context
          .dependOnInheritedWidgetOfExactType<ChatUiConfigProvider>()
          ?.config;

  @override
  bool updateShouldNotify(ChatUiConfigProvider oldWidget) =>
      config != oldWidget.config;
}
