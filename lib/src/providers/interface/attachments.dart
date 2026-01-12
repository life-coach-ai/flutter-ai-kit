// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cross_file/cross_file.dart';
import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';

/// An abstract class representing an attachment in a chat message.
///
/// This class serves as a base for different types of attachments
/// (e.g., files, images, links) that can be included in a chat message.
///
/// For custom attachment types, use [CustomAttachment] to wrap domain-specific
/// data with custom rendering via [AttachmentViewRegistry].
@immutable
sealed class Attachment {
  /// Creates an [Attachment] with the given name.
  ///
  /// [name] is the name of the attachment, which must not be null.
  const Attachment({required this.name});

  /// The name of the attachment.
  final String name;

  static String _mimeType(XFile file) =>
      file.mimeType ?? lookupMimeType(file.name) ?? 'application/octet-stream';

  static bool _isImage(String mimeType) =>
      mimeType.toLowerCase().startsWith('image/');
}

/// Represents a file attachment in a chat message.
///
/// This class extends [Attachment] and provides specific properties and methods
/// for handling file attachments.
@immutable
final class FileAttachment extends Attachment {
  /// Creates a [FileAttachment] with the given name, MIME type, and bytes.
  ///
  /// [name] is the name of the file attachment.
  /// [mimeType] is the MIME type of the file.
  /// [bytes] is the binary content of the file.
  const FileAttachment({
    required super.name,
    required this.mimeType,
    required this.bytes,
  });

  /// Factory constructor for creating either a [FileAttachment] or an
  /// [ImageFileAttachment].
  ///
  /// This factory method determines the type of attachment based on the MIME
  /// type. If the MIME type indicates an image, it creates an
  /// [ImageFileAttachment]. Otherwise, it creates a [FileAttachment].
  ///
  /// [name] is the name of the attachment. [mimeType] is the MIME type of the
  /// attachment. [bytes] is the binary content of the attachment.
  ///
  /// Returns an instance of either [FileAttachment] or [ImageFileAttachment].
  factory FileAttachment.fileOrImage({
    required String name,
    required String mimeType,
    required Uint8List bytes,
  }) =>
      Attachment._isImage(mimeType)
          ? ImageFileAttachment(name: name, mimeType: mimeType, bytes: bytes)
          : FileAttachment(name: name, mimeType: mimeType, bytes: bytes);

  /// The MIME type of the file attachment.
  final String mimeType;

  /// The binary content of the file attachment.
  final Uint8List bytes;

  @override
  String toString() =>
      'FileAttachment('
      'name: $name, '
      'mimeType: $mimeType, '
      // I want to avoid the trailing whitespace here for readability.
      // ignore: missing_whitespace_between_adjacent_strings
      'bytes: ${bytes.length} bytes'
      ')';

  /// Creates a [FileAttachment] from an [XFile].
  ///
  /// This factory method asynchronously reads the file content and determines
  /// its MIME type.
  ///
  /// [file] is the XFile object representing the file to be attached.
  ///
  /// Returns a Future that completes with a [FileAttachment] instance.
  static Future<FileAttachment> fromFile(XFile file) async =>
      FileAttachment.fileOrImage(
        name: file.name,
        mimeType: Attachment._mimeType(file),
        bytes: await file.readAsBytes(),
      );
}

/// Represents an image attachment in a chat message.
///
/// This class extends [Attachment] and provides specific properties and methods
/// for handling image attachments.
@immutable
final class ImageFileAttachment extends FileAttachment {
  /// Creates an [ImageFileAttachment] with the given name, MIME type, and
  /// bytes.
  ///
  /// [name] is the name of the image attachment. [mimeType] is the MIME type of
  /// the image. [bytes] is the binary content of the image.
  ImageFileAttachment({
    required super.name,
    required super.mimeType,
    required super.bytes,
  }) : assert(Attachment._isImage(mimeType));

  @override
  String toString() =>
      'ImageFileAttachment('
      'name: $name, '
      'mimeType: $mimeType, '
      // I want to avoid the trailing whitespace here for readability.
      // ignore: missing_whitespace_between_adjacent_strings
      'bytes: ${bytes.length} bytes'
      ')';

  /// Creates an [ImageFileAttachment] from an [XFile].
  ///
  /// This factory method asynchronously reads the file content and determines
  /// its MIME type. It throws an exception if the file is not an image.
  ///
  /// [file] is the XFile object representing the image file to be attached.
  ///
  /// Returns a Future that completes with an [ImageFileAttachment] instance.
  /// Throws an Exception if the file is not an image.
  static Future<ImageFileAttachment> fromFile(XFile file) async {
    final mimeType = Attachment._mimeType(file);
    if (!Attachment._isImage(mimeType)) {
      throw Exception('Not an image: $mimeType');
    }

    return ImageFileAttachment(
      name: file.name,
      mimeType: mimeType,
      bytes: await file.readAsBytes(),
    );
  }
}

/// Represents a link attachment in a chat message.
///
/// This class extends [Attachment] and provides specific properties for
/// handling link attachments.
@immutable
final class LinkAttachment extends Attachment {
  /// Creates a [LinkAttachment] with the given name and URL.
  ///
  /// [name] is the name of the link attachment.
  /// [url] is the URI of the link.
  LinkAttachment({required super.name, required this.url, String? mimeType})
    : mimeType =
          mimeType ?? lookupMimeType(url.path) ?? 'application/octet-stream';

  /// The URL of the link attachment.
  final Uri url;

  /// The MIME type of the linked content.
  ///
  /// This property specifies the media type of the resource pointed to by the
  /// [url].
  final String mimeType;

  @override
  String toString() =>
      'LinkAttachment('
      'name: $name, '
      'url: $url, '
      'mimeType: $mimeType'
      ')';
}

/// Represents a custom attachment in a chat message.
///
/// This class provides a designated extension point for third-party code
/// to create custom attachment types without breaking the sealed class hierarchy.
/// Custom attachments carry arbitrary serializable data and use a type identifier
/// for registration with [AttachmentViewRegistry].
///
/// Example:
/// ```dart
/// final toolAttachment = CustomAttachment(
///   name: 'qi_men',
///   customType: 'chat_tool',
///   data: {
///     'toolId': 'qi_men',
///     'params': {...},
///   },
/// );
/// ```
@immutable
final class CustomAttachment extends Attachment {
  /// Creates a [CustomAttachment] with the given name, custom type, and data.
  ///
  /// [name] is the display name of the attachment.
  /// [customType] is a string identifier for this custom attachment type
  /// (e.g., 'chat_tool', 'location', 'payment'). This is used for registry lookup.
  /// [data] is a serializable map containing the custom attachment's data.
  const CustomAttachment({
    required super.name,
    required this.customType,
    required this.data,
  });

  /// The type identifier for this custom attachment.
  ///
  /// This string is used to look up the appropriate view builder in
  /// [AttachmentViewRegistry]. Examples: 'chat_tool', 'location', 'payment'.
  final String customType;

  /// The serializable data for this custom attachment.
  ///
  /// This map should contain all the data needed to reconstruct the
  /// custom attachment and render its view. The data must be JSON-serializable.
  final Map<String, dynamic> data;

  @override
  String toString() =>
      'CustomAttachment('
      'name: $name, '
      'customType: $customType, '
      'data: $data'
      ')';
}
