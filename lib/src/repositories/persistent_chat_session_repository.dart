import 'package:flutter_ai_toolkit/src/repositories/message_ack.dart';
import 'package:flutter_ai_toolkit/src/session/session_tool_types.dart';

import '../providers/interface/attachments.dart';
import '../providers/interface/chat_message.dart';
import 'model/chat_tool_intent.dart';

abstract class PersistentChatSessionRepository {
  // Watch the chat message history.
  // /users/{user_id}/chats/{chat_id}/history
  Stream<List<ChatMessage>> watchChatMessageHistory(String chatId);

  // Watch the available tools for the next message.
  // /users/{user_id}/chats/{chat_id}/available_tools
  Stream<List<AvailableToolInfo>> watchAvailableTools(String chatId);

  // Send user message to the backend via /chat endpoint.
  // The backend stores the user message and return synchronously MessageAck
  // - If editedMessageId is provided, the backend replaces the message with the new one.
  // The stored user message appear on frontend via watchChatMessageHistory stream.
  // Asynchronnous backend processing after:
  // The backend generates the assistant message -> appear on frontend via watchChatMessageHistory stream.
  Future<MessageAck> sendUserChatMessage({
    required String chatId,
    required String userMessageText,
    String? editedMessageUuid,
    List<Attachment> attachments = const [],
    List<ChatToolIntent> chatToolIntents = const [],
  });

  // When the user stops sending the message, 
  // the backend is notified about that via /cancel endpoint.
  // the backend removes the user message from the history.
  // if there was an assistant message generated, it is removed from the history.
  // All the removal is synchronised via watchChatMessageHistory stream.
  Future<MessageAck> cancelUserChatMessage({
    required String chatId,
    required String messageUuid,
  });
}

