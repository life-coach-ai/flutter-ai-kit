import 'package:flutter_ai_toolkit/src/repositories/message_ack.dart';
import 'package:flutter_ai_toolkit/src/session/session_tool_types.dart';

import 'model/persisted_chat_message.dart';
import 'model/persisted_chat_tool_intent.dart';
import 'model/tool_execution_intent_request.dart';
import 'model/user_location.dart';

abstract class PersistentChatSessionRepository {
  // Watch the chat message history.
  // /users/{user_id}/chats/{chat_id}/history
  Stream<List<ChatMessageBase>> watchChatMessageHistory(String chatId);

  // Watch the available tools for the next message.
  // /users/{user_id}/chats/{chat_id}/available_tools
  Stream<List<AvailableToolInfo>> watchAvailableTools(String chatId);

  // POST /chat-sessions/{chat_session_id}/send-chat-message
  //
  // Request body mirrors lcai-core `SendChatMessageRequest`:
  // - client_message_uuid, user_message_text, user_location,
  //   chat_tool_intents, active_tool_execution_intents,
  //   edited_message_id, message_version
  //
  // The backend persists the user message and assistant placeholder, then
  // returns `SendChatMessageResponse` as [MessageAck]. The stored user message
  // appears on the frontend via [watchChatMessageHistory].
  //
  // If [editedMessageUuid] is provided, the backend replaces history from that
  // server message UUID onward. Asynchronous generation then updates the
  // assistant placeholder via [watchChatMessageHistory].
  Future<MessageAck> sendUserChatMessage({
    required String chatId,
    required String clientMessageUuid,
    required String userMessageText,
    String? editedMessageUuid,
    UserLocation? userLocation,
    List<PersistedChatToolIntent> chatToolIntents = const [],
    List<ToolExecutionIntentRequest> activeToolExecutionIntents = const [],
    int messageVersion = 1,
  });

  // Cancel endpoint is not implemented in lcai-core yet.
  //
  // Intended behaviour once available: notify the backend that the user stopped
  // sending; the backend removes the user message and any in-flight assistant
  // message from history. Removals sync via [watchChatMessageHistory].
  Future<MessageAck> cancelUserChatMessage({
    required String chatId,
    required String messageUuid,
  });
}
