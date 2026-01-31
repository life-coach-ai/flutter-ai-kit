// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

/// Style overrides for a specific attachment type.
@immutable
class AttachmentItemStyle {
  const AttachmentItemStyle({
    this.listHeight,
    this.listPadding,
    this.itemHeight,
    this.itemPadding,
  });

  final double? listHeight;
  final EdgeInsets? listPadding;
  final double? itemHeight;
  final EdgeInsets? itemPadding;
}

/// Style for the attachment list and items in the chat input.
@immutable
class AttachmentsStyle {
  const AttachmentsStyle({
    this.listHeight,
    this.listPadding,
    this.itemHeight,
    this.itemPadding,
    this.customTypeOverrides,
  });

  factory AttachmentsStyle.resolve(
    AttachmentsStyle? style, {
    AttachmentsStyle? defaultStyle,
  }) {
    defaultStyle ??= AttachmentsStyle.defaultStyle();
    return AttachmentsStyle(
      listHeight: style?.listHeight ?? defaultStyle.listHeight,
      listPadding: style?.listPadding ?? defaultStyle.listPadding,
      itemHeight: style?.itemHeight ?? defaultStyle.itemHeight,
      itemPadding: style?.itemPadding ?? defaultStyle.itemPadding,
      customTypeOverrides:
          style?.customTypeOverrides ?? defaultStyle.customTypeOverrides,
    );
  }

  factory AttachmentsStyle.defaultStyle() => AttachmentsStyle._lightStyle();

  factory AttachmentsStyle._lightStyle() => const AttachmentsStyle(
    listHeight: 104,
    listPadding: EdgeInsets.only(top: 12, bottom: 12, left: 12),
    itemHeight: 80,
    itemPadding: EdgeInsets.only(right: 12),
    customTypeOverrides: {},
  );

  AttachmentsStyle copyWith({
    double? listHeight,
    EdgeInsets? listPadding,
    double? itemHeight,
    EdgeInsets? itemPadding,
    Map<String, AttachmentItemStyle>? customTypeOverrides,
  }) => AttachmentsStyle(
    listHeight: listHeight ?? this.listHeight,
    listPadding: listPadding ?? this.listPadding,
    itemHeight: itemHeight ?? this.itemHeight,
    itemPadding: itemPadding ?? this.itemPadding,
    customTypeOverrides: customTypeOverrides ?? this.customTypeOverrides,
  );

  final double? listHeight;
  final EdgeInsets? listPadding;
  final double? itemHeight;
  final EdgeInsets? itemPadding;

  /// Optional size overrides keyed by CustomAttachment.customType.
  final Map<String, AttachmentItemStyle>? customTypeOverrides;
}
