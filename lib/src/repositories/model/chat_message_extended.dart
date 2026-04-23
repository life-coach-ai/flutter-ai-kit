/// Status of a user chat message.
enum UserMessageDeliveryStatus {
  sending,
  sent,
  persisted,
  failed,
}

/// Status of an assistant chat message.
enum AssistantMessageGenerationStatus {
  none,        
  pending,
  generating,
  completed,
  failed,
}

enum MessageOrigin {
  user,
  assistant,
}

/// Persisted chat message model used by repository implementations.
///
/// This model is intentionally separate from provider/interface message models.
abstract class ChatMessage {
  const ChatMessage({
    required this.text,
    required this.origin,
    this.serverUuid,
    this.serverTimestamp,
  });

  final MessageOrigin origin;
  final String text;

  // Exists only once persisted
  final String? serverUuid;
  final DateTime? serverTimestamp;
}

class UserMessage extends ChatMessage {
  const UserMessage({
    required super.text,
    required this.clientUuid,
    required this.clientTimestamp,
    required this.deliveryStatus,
    super.serverUuid,
    super.serverTimestamp,
  }) : super(origin: MessageOrigin.user);

  final String clientUuid;
  final DateTime clientTimestamp;
  final UserMessageDeliveryStatus deliveryStatus;
}

class AssistantMessage extends ChatMessage {
  const AssistantMessage({
    required super.text,
    required this.generationStatus,
    super.serverUuid,
    super.serverTimestamp,
  }) : super(origin: MessageOrigin.assistant);

  final AssistantMessageGenerationStatus generationStatus;
}