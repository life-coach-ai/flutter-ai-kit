// Copyright 2024 The Flutter Authors. All rights reserved.

import 'package:flutter/widgets.dart';

import 'chat_ui_config.dart';
import 'chat_ui_config_provider.dart';

/// Builds with the nearest [ChatUiConfig].
@immutable
class ChatUiConfigClient extends StatelessWidget {
  const ChatUiConfigClient({required this.builder, this.child, super.key});

  final Widget Function(BuildContext context, ChatUiConfig config, Widget? child)
      builder;

  final Widget? child;

  @override
  Widget build(BuildContext context) =>
      builder(context, ChatUiConfigProvider.of(context), child);
}
