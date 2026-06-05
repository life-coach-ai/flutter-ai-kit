/// Synchronous ack after persisting a user message (and assistant placeholder).
///
/// Mirrors lcai-core `SendChatMessageResponse` (`api.py`).
class MessageAck {
  const MessageAck({
    required this.clientMessageUuid,
    required this.serverMessageUuid,
    required this.serverMessageTimestamp,
    required this.assistantMessageUuid,
    required this.ack,
    required this.ackType,
  });

  factory MessageAck.fromJson(Map<String, dynamic> json) => MessageAck(
        clientMessageUuid: json['client_message_uuid'] as String,
        serverMessageUuid: json['server_message_uuid'] as String,
        serverMessageTimestamp: DateTime.parse(
          json['server_message_timestamp'] as String,
        ),
        assistantMessageUuid: json['assistant_message_uuid'] as String,
        ack: json['ack'] as bool? ?? true,
        ackType: MessageAckType.fromString(
          json['ack_type'] as String? ?? MessageAckType.sendMessage.name,
        ),
      );

  final String clientMessageUuid;
  final String serverMessageUuid;
  final DateTime serverMessageTimestamp;
  final String assistantMessageUuid;
  final bool ack;
  final MessageAckType ackType;
}

enum MessageAckType {
  sendMessage,
  editMessage,
  cancelMessage;

  static MessageAckType fromString(String value) =>
      MessageAckType.values.firstWhere(
        (type) => type.name == value,
        orElse: () => MessageAckType.sendMessage,
      );

  String toJson() => name;
}
