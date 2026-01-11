// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../providers/interface/attachments.dart';

/// A function that builds a widget for a custom attachment type.
///
/// The [context] provides access to theme and localization.
/// The [attachment] is the custom attachment instance to render.
typedef AttachmentViewBuilder = Widget Function(
  BuildContext context,
  Attachment attachment,
);

/// Registry for custom attachment view builders.
///
/// This allows applications to register custom attachment types and their
/// corresponding view builders. When [AttachmentView] encounters an attachment
/// type in the registry, it will use the registered builder instead of the
/// default rendering logic.
///
/// Example usage:
/// ```dart
/// final registry = AttachmentViewRegistry(
///   builders: {
///     ChatToolAttachment: (context, attachment) {
///       final tool = attachment as ChatToolAttachment;
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
  /// The [builders] map associates [Type] keys (representing attachment classes)
  /// with [AttachmentViewBuilder] functions that render those attachments.
  const AttachmentViewRegistry({required this.builders});

  /// Map of attachment types to their view builders.
  ///
  /// Keys are the runtime types of custom attachment classes.
  /// Values are builder functions that create widgets for those types.
  final Map<Type, AttachmentViewBuilder> builders;

  /// Get the builder for a given attachment type.
  ///
  /// Returns `null` if no builder is registered for this type.
  AttachmentViewBuilder? getBuilder(Type attachmentType) =>
      builders[attachmentType];

  /// Check if a builder is registered for a given attachment type.
  bool hasBuilder(Type attachmentType) => builders.containsKey(attachmentType);
}
