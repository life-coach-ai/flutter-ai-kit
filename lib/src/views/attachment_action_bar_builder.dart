// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../providers/interface/attachments.dart';

/// A function type that defines how to build a widget for the attachment
/// action bar.
///
/// The [context] parameter provides access to the build context for theme,
/// localization, and other inherited widgets.
///
/// The [onAttachments] parameter is a callback that should be invoked when
/// attachments are selected by the custom widget. This callback accepts an
/// iterable of [Attachment] objects that will be added to the message being
/// composed.
///
/// The function should return a [Widget] that will be displayed in the chat
/// input row, typically to the left of the text input field. This allows
/// complete customization of the attachment action bar, such as replacing the
/// default file/image picker with a custom tool selector or other input method.
///
/// ## Example Usage
///
/// ```dart
/// LlmChatView(
///   provider: myProvider,
///   enableAttachments: true,
///   attachmentActionBarBuilder: (context, onAttachments) {
///     return IconButton(
///       icon: Icon(Icons.auto_awesome),
///       onPressed: () async {
///         final result = await showMyCustomSelector(context);
///         if (result != null) {
///           onAttachments([MyCustomAttachment(result)]);
///         }
///       },
///     );
///   },
/// )
/// ```
///
/// ## Notes
///
/// - The builder is only invoked when `enableAttachments` is `true`.
/// - If `attachmentActionBarBuilder` is `null`, the default
///   [AttachmentActionBar] widget is used.
/// - The returned widget should handle its own tap/interaction logic and
///   invoke the [onAttachments] callback when appropriate.
typedef AttachmentActionBarBuilder = Widget Function(
  BuildContext context,
  void Function(Iterable<Attachment>) onAttachments,
);
