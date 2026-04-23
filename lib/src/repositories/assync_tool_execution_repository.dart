import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:flutter_ai_toolkit/src/session/active_tool_execution_summary.dart';

abstract class AssyncToolExecutionProvider {
  // Watch the tool executions.
  // /users/{user_id}/chats/{chat_id}/active_tool_executions
  Stream<List<ActiveToolExecutionSummary>> watchToolExecutions(String chatId);

  // Execute a tool asynchronously.
  Future<void> executeToolAsync({
    required String chatId,
    required SelectedChatTool selectedChatTool,
  });

  // When the tool execution is cancelled,
  // the backend is notified about that via /tool-executions/cancel endpoint.
  // All the removal is synchronised via watchToolExecutions stream.
  Future<void> cancelToolExecution({
    required String chatId,
    required String toolExecutionId,
  });
}