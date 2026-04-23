// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// using dynamic calls to translate to/from JSON
// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import '../../providers/interface/attachments.dart';
import 'message_origin.dart';

/// Represents a message in a chat conversation.
///
/// This class encapsulates the properties and behavior of a chat message,
/// including persistence [id], optional server [serverUuid] and [clientUuid],
/// [serverTimestamp], [clientTimestamp], [metadata], origin (user or LLM),
/// text content, and any attachments.
class ChatMessage {
  /// Constructs a [ChatMessage] instance.
  ///
  /// The [origin] parameter specifies the origin of the message (user or LLM).
  /// The [text] parameter is the content of the message. It can be null or
  /// empty if the message is from an LLM. For user-originated messages, [text]
  /// must not be null or empty. The [attachments] parameter is a list of any
  /// files or media attached to the message. Optional [serverUuid], [clientUuid],
  /// [serverTimestamp], [clientTimestamp], and [metadata] describe server
  /// identity, client-side wall time, server wall time, and extra payload
  /// respectively.
  ChatMessage({
    required this.origin,
    required this.text,
    required this.attachments,
    this.id,
    this.serverUuid,
    this.clientUuid,
    this.serverTimestamp,
    this.clientTimestamp,
    this.metadata,
  }) : assert(origin.isUser && text != null && text.isNotEmpty || origin.isLlm);

  /// Firestore `history` subcollection document id for this message (e.g. `"005"`), if loaded from persistence.
  ///
  /// Null for messages not yet written or purely local rows.
  final String? id;

  /// Server-assigned unique identifier for this message, when known.
  ///
  /// Distinct from [id] (which may be a persistence row key). Prefer [serverUuid]
  /// for correlating with backend APIs.
  final String? serverUuid;

  /// Client-generated identifier, typically until [serverUuid] is assigned by the server.
  final String? clientUuid;

  /// Message time; use UTC (`DateTime.utc`) or a `DateTime` with an explicit
  /// offset so [toJson]/ISO-8601 round-trips preserve timezone information.
  final DateTime? serverTimestamp;

  /// Client-side time when this message was created.
  ///
  /// Keep timezone explicit (`DateTime.utc` or offset-aware) for stable
  /// serialization.
  final DateTime? clientTimestamp;

  /// Optional structured metadata (tool payloads, UI hints, etc.).
  ///
  /// Prefer keeping this JSON-serializable when using [toJson].
  final Map<String, dynamic>? metadata;

  /// Converts a JSON map representation to a [ChatMessage].
  ///
  /// The map should contain the following keys:
  /// - 'origin': The origin of the message (user or model).
  /// - 'text': The text content of the message.
  /// - 'server_uuid', 'client_uuid': Optional string identifiers.
  /// - 'server_timestamp': Optional ISO-8601 string (UTC or with offset).
  /// - 'client_timestamp': Optional ISO-8601 string (UTC or with offset).
  /// - 'metadata': Optional JSON object map.
  /// - 'attachments': A list of attachments, each represented as a map with:
  ///   - 'type': The type of the attachment ('file' or 'link').
  ///   - 'name': The name of the attachment.
  ///   - 'mimeType': The MIME type of the attachment.
  ///   - 'data': The data of the attachment, either as a base64 encoded string
  ///     (for files) or a URL (for links).
  factory ChatMessage.fromJson(Map<String, dynamic> map) => ChatMessage(
    origin: MessageOrigin.values.byName(map['origin'] as String),
    text: map['text'] as String,
    id: map['id'] as String?,
    serverUuid: map['server_uuid'] as String?,
    clientUuid: map['client_uuid'] as String?,
    serverTimestamp: map['server_timestamp'] != null
        ? DateTime.tryParse(map['server_timestamp'] as String)
        : null,
    clientTimestamp: map['client_timestamp'] != null
        ? DateTime.tryParse(map['client_timestamp'] as String)
        : null,
    metadata: map['metadata'] != null
        ? Map<String, dynamic>.from(map['metadata'] as Map<dynamic, dynamic>)
        : null,
    attachments: [
      for (final attachment in map['attachments'] as List<dynamic>)
        switch (attachment['type'] as String) {
          'file' => FileAttachment.fileOrImage(
            name: attachment['name'] as String,
            mimeType: attachment['mimeType'] as String,
            bytes: base64Decode(attachment['data'] as String),
          ),
          'link' => LinkAttachment(
            name: attachment['name'] as String,
            url: Uri.parse(attachment['data'] as String),
          ),
          'custom' => CustomAttachment(
            name: attachment['name'] as String,
            customType: attachment['customType'] as String,
            data: attachment['data'] as Map<String, dynamic>,
          ),
          // Handle legacy/unknown types by treating as custom with type as customType
          _ => CustomAttachment(
            name: attachment['name'] as String? ?? 'unknown',
            customType: attachment['type'] as String? ?? 'unknown',
            data: (attachment['data'] is Map<String, dynamic>)
                ? attachment['data'] as Map<String, dynamic>
                : {'raw': attachment['data']},
          ),
        },
    ],
  );

  /// Factory constructor for creating an LLM-originated message.
  ///
  /// Creates a message with an empty text content and no attachments.
  factory ChatMessage.llm({
    String? id,
    String? serverUuid,
    String? clientUuid,
    DateTime? serverTimestamp,
    DateTime? clientTimestamp,
    Map<String, dynamic>? metadata,
  }) => ChatMessage(
    origin: MessageOrigin.llm,
    text: null,
    attachments: [],
    id: id,
    serverUuid: serverUuid,
    clientUuid: clientUuid,
    serverTimestamp: serverTimestamp,
    clientTimestamp: clientTimestamp,
    metadata: metadata,
  );

  /// Factory constructor for creating a user-originated message.
  ///
  /// [text] is the content of the user's message.
  /// [attachments] are any files or media the user has attached to the message.
  factory ChatMessage.user(
    String text,
    Iterable<Attachment> attachments, {
    String? id,
    String? serverUuid,
    String? clientUuid,
    DateTime? serverTimestamp,
    DateTime? clientTimestamp,
    Map<String, dynamic>? metadata,
  }) =>
      ChatMessage(
        origin: MessageOrigin.user,
        text: text,
        attachments: attachments,
        id: id,
        serverUuid: serverUuid,
        clientUuid: clientUuid,
        serverTimestamp: serverTimestamp,
        clientTimestamp: clientTimestamp,
        metadata: metadata,
      );

  /// Text content of the message.
  String? text;

  /// The origin of the message (user or LLM).
  final MessageOrigin origin;

  /// Any attachments associated with the message.
  final Iterable<Attachment> attachments;

  /// Appends additional text to the existing message content.
  ///
  /// This is typically used for LLM messages that are streamed in parts.
  void append(String text) => this.text = (this.text ?? '') + text;

  @override
  String toString() =>
      'ChatMessage('
      'origin: $origin, '
      'text: $text, '
      'id: $id, '
      'server_uuid: $serverUuid, '
      'client_uuid: $clientUuid, '
      'server_timestamp: $serverTimestamp, '
      'client_timestamp: $clientTimestamp, '
      'metadata: $metadata, '
      'attachments: $attachments'
      ')';

  /// Converts a [ChatMessage] to a JSON map representation.
  ///
  /// The map contains the following keys:
  /// - 'origin': The origin of the message (user or model).
  /// - 'text': The text content of the message.
  /// - 'serverUuid', 'clientUuid', 'serverTimestamp', 'clientTimestamp', 'metadata':
  ///   Included when non-null.
  /// - 'attachments': A list of attachments, each represented as a map with:
  ///   - 'type': The type of the attachment ('file' or 'link').
  ///   - 'name': The name of the attachment.
  ///   - 'mimeType': The MIME type of the attachment.
  ///   - 'data': The data of the attachment, either as a base64 encoded string
  ///     (for files) or a URL (for links).
  Map<String, dynamic> toJson() => {
    'origin': origin.name,
    'text': text,
    if (id != null) 'id': id,
    if (serverUuid != null) 'server_uuid': serverUuid,
    if (clientUuid != null) 'client_uuid': clientUuid,
    if (serverTimestamp != null) 'server_timestamp': serverTimestamp!.toIso8601String(),
    if (clientTimestamp != null)
      'client_timestamp': clientTimestamp!.toIso8601String(),
    if (metadata != null) 'metadata': metadata,
    'attachments': [
      for (final attachment in attachments)
        {
          'type': switch (attachment) {
            FileAttachment _ => 'file',
            LinkAttachment _ => 'link',
            CustomAttachment _ => 'custom',
          },
          'name': attachment.name,
          'mimeType': switch (attachment) {
            FileAttachment a => a.mimeType,
            LinkAttachment a => a.mimeType,
            CustomAttachment _ => null,
          },
          'data': switch (attachment) {
            FileAttachment a => base64Encode(a.bytes),
            LinkAttachment a => a.url,
            CustomAttachment a => a.data,
          },
          if (attachment case CustomAttachment a) 'customType': a.customType,
        },
    ],
  };
}
