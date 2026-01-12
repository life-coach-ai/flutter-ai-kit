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
/// attachments, link attachments, and custom attachments. Custom attachment
/// types can be registered via [AttachmentViewRegistry].
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
  /// If provided and a builder is registered for a [CustomAttachment]'s
  /// customType, the registered builder will be used to render it.
  final AttachmentViewRegistry? registry;

  @override
  Widget build(BuildContext context) {
    // Exhaustive pattern matching on sealed Attachment class
    return switch (attachment) {
      ImageFileAttachment a => ImageAttachmentView(a),
      FileAttachment a => FileAttachmentView(a),
      LinkAttachment a => LinkAttachmentView(a),
      CustomAttachment a => _buildCustom(context, a),
    };
  }

  /// Builds a custom attachment using the registry.
  ///
  /// If a builder is registered for this custom type, it will be used.
  /// Otherwise, a fallback widget is displayed.
  Widget _buildCustom(BuildContext context, CustomAttachment attachment) {
    final builder = registry?.getBuilder(attachment.customType);
    if (builder != null) {
      return builder(context, attachment.data);
    }
    // Fallback for unregistered custom types
    return Text(
      'Unknown custom attachment type: ${attachment.customType}',
      style: const TextStyle(color: Color(0xFFFF0000)),
    );
  }
}
