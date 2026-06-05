import 'persisted_model_utils.dart';

/// User intent for an active tool execution on the next outbound message.
///
/// Mirrors `ActiveToolExecutionClientIntent` in lcai-core `tool_intent_model.py`.
enum ActiveToolExecutionClientIntent {
  continueTurn('continue_turn'),
  pauseTurn('pause_turn'),
  cancel('cancel'),
  switchToSync('switch_to_sync'),
  switchToAsync('switch_to_async');

  const ActiveToolExecutionClientIntent(this.jsonValue);

  final String jsonValue;

  static ActiveToolExecutionClientIntent? tryParse(String? value) {
    if (value == null) {
      return null;
    }
    for (final intent in ActiveToolExecutionClientIntent.values) {
      if (intent.jsonValue == value) {
        return intent;
      }
    }
    return null;
  }
}

/// Source of an active tool execution intent.
///
/// Mirrors `ActiveToolExecutionIntentSource` in lcai-core `tool_intent_model.py`.
enum ActiveToolExecutionIntentSource {
  recognizedFromUserMessage('recognized_from_user_message'),
  recognizedFromToolExecutionUi('recognized_from_tool_execution_ui');

  const ActiveToolExecutionIntentSource(this.jsonValue);

  final String jsonValue;

  static ActiveToolExecutionIntentSource? tryParse(String? value) {
    if (value == null) {
      return null;
    }
    for (final source in ActiveToolExecutionIntentSource.values) {
      if (source.jsonValue == value) {
        return source;
      }
    }
    return null;
  }
}

/// Request payload element for `SendChatMessageRequest.active_tool_execution_intents`.
///
/// Mirrors lcai-core `ToolExecutionIntentRequest` (`tool_intent_model.py`).
final class ToolExecutionIntentRequest {
  const ToolExecutionIntentRequest({
    required this.executionId,
    required this.clientIntent,
    required this.source,
    this.toolId,
    this.params,
  });

  factory ToolExecutionIntentRequest.fromJson(Map<String, dynamic> json) {
    final clientIntent = ActiveToolExecutionClientIntent.tryParse(
      json['client_intent'] as String?,
    );
    final source = ActiveToolExecutionIntentSource.tryParse(
      json['source'] as String?,
    );
    if (clientIntent == null || source == null) {
      throw FormatException('Invalid tool execution intent request: $json');
    }
    return ToolExecutionIntentRequest(
      executionId: json['execution_id'] as String,
      toolId: json['tool_id'] as String?,
      clientIntent: clientIntent,
      source: source,
      params: json['params'] == null
          ? null
          : Map<String, dynamic>.from(
              json['params'] as Map<dynamic, dynamic>,
            ),
    );
  }

  final String executionId;
  final String? toolId;
  final ActiveToolExecutionClientIntent clientIntent;
  final ActiveToolExecutionIntentSource source;
  final Map<String, dynamic>? params;

  Map<String, dynamic> toJson() => {
        'execution_id': executionId,
        if (toolId != null) 'tool_id': toolId,
        'client_intent': clientIntent.jsonValue,
        'source': source.jsonValue,
        if (params != null) 'params': params,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ToolExecutionIntentRequest &&
          executionId == other.executionId &&
          toolId == other.toolId &&
          clientIntent == other.clientIntent &&
          source == other.source &&
          mapEquals(params, other.params);

  @override
  int get hashCode =>
      Object.hash(executionId, toolId, clientIntent, source, params);
}
