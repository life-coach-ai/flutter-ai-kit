// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

/// A function that builds a widget for a custom attachment type.
///
/// The [context] provides access to theme and localization.
/// The [data] is the custom attachment's data map that can be deserialized
/// into the appropriate type for rendering.
typedef AttachmentViewBuilder = Widget Function(
  BuildContext context,
  Map<String, dynamic> data,
);

/// Registry for custom attachment view builders.
///
/// This allows applications to register custom attachment types and their
/// corresponding view builders. When [AttachmentView] encounters a
/// [CustomAttachment], it will use the registered builder for that customType
/// instead of the default rendering logic.
///
/// Example usage:
/// ```dart
/// final registry = AttachmentViewRegistry(
///   builders: {
///     'chat_tool': (context, data) {
///       final tool = ChatToolAttachment.fromData(data);
///       return ChatToolAttachmentView(tool: tool);
///     },
///   },
/// );
///
/// LlmChatView(
///   provider: myProvider,
///   attachmentViewRegistry: registry,
/// )
/// ```
class AttachmentViewRegistry {
  /// Creates an [AttachmentViewRegistry] with the given builders.
  ///
  /// The [builders] map associates custom type identifiers (strings like
  /// 'chat_tool', 'location', etc.) with [AttachmentViewBuilder] functions
  /// that render those custom attachment types.
  const AttachmentViewRegistry({required this.builders});

  /// Map of custom type identifiers to their view builders.
  ///
  /// Keys are string identifiers matching [CustomAttachment.customType].
  /// Values are builder functions that create widgets for those custom types.
  final Map<String, AttachmentViewBuilder> builders;

  /// Get the builder for a given custom attachment type.
  ///
  /// Returns `null` if no builder is registered for this custom type.
  AttachmentViewBuilder? getBuilder(String customType) =>
      builders[customType];

  /// Check if a builder is registered for a given custom attachment type.
  bool hasBuilder(String customType) => builders.containsKey(customType);
}
