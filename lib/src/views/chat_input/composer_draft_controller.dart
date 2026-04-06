// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';

import '../../providers/interface/attachments.dart';

/// Bridges the composer's draft [Attachment] list so widgets outside [ChatInput]
/// (e.g. custom [ResponseBuilder] UIs) can add or remove attachments in sync
/// with the same [setState] that owns the composer's attachment list.
///
/// Create one controller per chat screen, pass it to [LlmChatView], and use
/// [ListenableBuilder] / [AnimatedBuilder] to react to draft changes.
class ComposerDraftController extends ChangeNotifier {
  void Function(Iterable<Attachment>)? _addAll;
  void Function(bool Function(Attachment))? _removeWhere;
  List<Attachment> Function()? _snapshot;

  /// Wires this controller to [ChatInput]; clears any previous binding.
  void bind({
    required void Function(Iterable<Attachment>) addAll,
    required void Function(bool Function(Attachment)) removeWhere,
    required List<Attachment> Function() snapshot,
  }) {
    _addAll = addAll;
    _removeWhere = removeWhere;
    _snapshot = snapshot;
  }

  /// Removes handlers; call when [ChatInput] disposes or rebinds elsewhere.
  void clearBinding() {
    _addAll = null;
    _removeWhere = null;
    _snapshot = null;
  }

  /// Appends attachments using the bound [ChatInput] mutation (typically
  /// `setState` + `_attachments.addAll`).
  void addAttachments(Iterable<Attachment> attachments) {
    _addAll?.call(attachments);
    notifyListeners();
  }

  /// Removes attachments matching [test] via the bound [ChatInput] list.
  void removeAttachmentsWhere(bool Function(Attachment) test) {
    _removeWhere?.call(test);
    notifyListeners();
  }

  /// Current draft copy; empty if not bound or snapshot unavailable.
  List<Attachment> readDraft() =>
      List<Attachment>.from(_snapshot?.call() ?? const <Attachment>[]);

  /// Notify listeners after [ChatInput] mutates attachments internally
  /// (picker, remove chip, send clear, edit restore).
  void notifyDraftChanged() => notifyListeners();
}
