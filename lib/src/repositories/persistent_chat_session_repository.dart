import 'package:flutter_ai_toolkit/src/repositories/message_ack.dart';

import 'model/chat_session.dart';
import 'model/persisted_chat_message.dart';
import 'model/persisted_chat_tool_intent.dart';
import 'model/tool_execution_intent_request.dart';
import 'model/user_location.dart';

abstract class PersistentChatSessionRepository {
  // Watch chat message history.
  //
  // Firestore: `users/{user_id}/chat_sessions/{chat_id}/history/{server_uuid}`
  //
  // Document id is the message `server_uuid`. Rows are ordered by
  // `server_timestamp`. Soft-deleted rows (`deleted: true`) are omitted.
  Stream<List<ChatMessageBase>> watchChatMessageHistory(String chatSessionId);

  // Watch the current chat session document.
  //
  // Firestore: `users/{user_id}/chat_sessions/{chat_id}` (lcai-core
  // `chat_session_store`). Emits null when the document is missing or the user
  // is logged out.
  //
  // Per-turn `{tool_id, mandatory}` lists from `/intro/{flavour_id}` or chat
  // responses are not persisted to Firestore yet.
  Stream<ChatSession?> watchChatSession(String chatSessionId);

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
    required String chatSessionId,
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
    required String chatSessionId,
    required String messageUuid,
  });
}
