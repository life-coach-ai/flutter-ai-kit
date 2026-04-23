/// Tool selection for the next outbound message (domain shape).
class MessageAck {
  const MessageAck({
    required this.clientMessageUuid,
    required this.serverMessageUuid,
    required this.ack,
    required this.ackType,
  });

  factory MessageAck.fromJson(Map<String, dynamic> json) =>
      MessageAck(
        clientMessageUuid: json['client_message_uuid'] as String,
        serverMessageUuid: json['server_message_uuid'] as String,
        ack: json['ack'] as bool,
        ackType: json['ack_type'] as MessageAckType,
      );

  final String clientMessageUuid;
  final String serverMessageUuid;
  final bool ack;
  final MessageAckType ackType;
}

enum MessageAckType {
  sendMessage,
  editMessage,
  cancelMessage;

  static MessageAckType fromString(String value) => MessageAckType.values.firstWhere(
      (type) => type.name == value,
      orElse: () => MessageAckType.sendMessage, // default
    );

  String toJson() => name;
}