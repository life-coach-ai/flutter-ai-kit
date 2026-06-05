import 'persisted_model_utils.dart';

enum ChatSessionState {
  draft,
  active,
  archived,
}

/// Firestore chat session document (`users/{user_id}/chat_sessions/{chat_id}`).
///
/// Mirrors lcai-core `ChatSessionDocument` / `chat_session_store.create_chat_session`.
class ChatSession {
  ChatSession({
    required this.id,
    required this.title,
    required this.flavourId,
    required this.createdAt,
    this.availableToolIds = const [],
    this.activeToolExecutionIds = const [],
    this.state = ChatSessionState.draft,
    this.evolvingIntentState,
  });

  factory ChatSession.fromJson(
    Map<String, dynamic> json, {
    String? id,
  }) =>
      ChatSession(
        id: id ?? json['id'] as String,
        title: json['title'] as String? ?? '',
        flavourId: json['flavour_id'] as String? ?? '',
        createdAt: _parseCreatedAt(json['created_timestamp']),
        availableToolIds: _stringList(json['available_tool_ids']),
        activeToolExecutionIds: _stringList(json['active_tool_execution_ids']),
        state: _parseState(json['session_state'] as String?),
        evolvingIntentState: _mapOrNull(json['evolving_intent_state']),
      );

  final String id;
  final String title;
  final String flavourId;
  final List<String> availableToolIds;
  final List<String> activeToolExecutionIds;
  final ChatSessionState state;
  final DateTime createdAt;

  /// Opaque evolving-intent payload from backend updates; not parsed further.
  final Map<String, dynamic>? evolvingIntentState;

  static List<String> _stringList(Object? raw) {
    if (raw is! List<dynamic>) {
      return const [];
    }
    return raw.map((e) => e as String).toList();
  }

  static ChatSessionState _parseState(String? raw) => switch (raw) {
        'draft' => ChatSessionState.draft,
        'active' => ChatSessionState.active,
        'archived' => ChatSessionState.archived,
        _ => ChatSessionState.draft,
      };

  static DateTime _parseCreatedAt(Object? raw) {
    return parseFirestoreTimestamp(raw) ??
        DateTime.fromMillisecondsSinceEpoch(0);
  }

  static Map<String, dynamic>? _mapOrNull(Object? raw) {
    if (raw is! Map) {
      return null;
    }
    return Map<String, dynamic>.from(raw);
  }
}
