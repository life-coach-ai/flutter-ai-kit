// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter_ai_toolkit/src/views/attachment_view/link_attachment_view.dart';

import '../../providers/interface/attachments.dart';
import '../attachment_view_registry.dart';
import 'file_attatchment_view.dart';
import 'image_attachment_view.dart';

/// A widget that displays an attachment based on its type.
///
/// This widget determines the appropriate view for the given [attachment]
/// and renders it accordingly. It supports file attachments, image
/// attachments, and link attachments. Custom attachment types can be
/// registered via [AttachmentViewRegistry].
@immutable
class AttachmentView extends StatelessWidget {
  /// Creates an AttachmentView.
  ///
  /// The [attachment] parameter must not be null.
  /// The [registry] parameter is optional and allows custom attachment rendering.
  const AttachmentView(
    this.attachment, {
    this.registry,
    super.key,
  });

  /// The attachment to be displayed.
  final Attachment attachment;

  /// Optional registry for custom attachment view builders.
  ///
  /// If provided and a builder is registered for this attachment's type,
  /// the custom builder will be used instead of the default rendering logic.
  final AttachmentViewRegistry? registry;

  @override
  Widget build(BuildContext context) {
    // Check for custom builder first
    final customBuilder = registry?.getBuilder(attachment.runtimeType);
    if (customBuilder != null) {
      return customBuilder(context, attachment);
    }

    // Fall back to default rendering
    return switch (attachment) {
      (final ImageFileAttachment a) => ImageAttachmentView(a),
      (final FileAttachment a) => FileAttachmentView(a),
      (final LinkAttachment a) => LinkAttachmentView(a),
      _ => Text('Unknown attachment type: ${attachment.runtimeType}'),
    };
  }
}
