// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../providers/interface/attachments.dart';
import '../../styles/attachments_style.dart';
import 'removable_attachment.dart';

/// A widget that displays a horizontal list of attachments with the ability to
/// remove them.
@immutable
class AttachmentsView extends StatelessWidget {
  /// Creates an [AttachmentsView].
  ///
  /// The [attachments] parameter is required and represents the list of
  /// attachments to display. The [onRemove] parameter is a callback function
  /// that is called when an attachment is removed.
  const AttachmentsView({
    required this.attachments,
    required this.onRemove,
    required this.style,
    super.key,
  });

  /// The list of attachments to display.
  final Iterable<Attachment> attachments;

  /// Callback function that is called when an attachment is removed.
  ///
  /// The removed [Attachment] is passed as an argument to this function.
  final Function(Attachment) onRemove;

  /// Style for attachment list and items.
  final AttachmentsStyle style;

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = AttachmentsStyle.resolve(style);

    AttachmentItemStyle? override;
    if (attachments.isNotEmpty) {
      final first = attachments.first;
      if (first is CustomAttachment) {
        final customType = first.customType;
        final allSameType = attachments.every(
          (a) => a is CustomAttachment && a.customType == customType,
        );
        if (allSameType) {
          override = resolvedStyle.customTypeOverrides?[customType];
        }
      }
    }

    final listHeight = override?.listHeight ?? resolvedStyle.listHeight ?? 0;
    final listPadding =
        override?.listPadding ?? resolvedStyle.listPadding ?? EdgeInsets.zero;
    final itemHeight = override?.itemHeight ?? resolvedStyle.itemHeight ?? 0;
    final itemPadding =
        override?.itemPadding ?? resolvedStyle.itemPadding ?? EdgeInsets.zero;

    return Container(
      height: attachments.isNotEmpty ? listHeight : 0,
      padding: listPadding,
      child:
          attachments.isNotEmpty
              ? ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (final a in attachments)
                    RemovableAttachment(
                      attachment: a,
                      onRemove: onRemove,
                      itemHeight: itemHeight,
                      itemPadding: itemPadding,
                    ),
                ],
              )
              : const SizedBox(),
    );
  }
}
