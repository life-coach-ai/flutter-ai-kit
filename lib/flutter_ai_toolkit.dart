// Copyright 2024 The Flutter Authors. All rights reserved.

/// A library for integrating AI-powered chat functionality into Flutter
/// applications.
///
/// Key components: [LlmChatSessionRepository], [ChatCubit], [ChatUiConfig],
/// legacy [LlmProvider] implementations (e.g. [EchoProvider]).
library;

export 'src/chat_session/chat_cubit.dart';
export 'src/chat_session/chat_intent.dart';
export 'src/chat_session/chat_state.dart';
export 'src/chat_session/chat_ui_effect.dart';
export 'src/dialogs/adaptive_dialog.dart';
export 'src/dialogs/adaptive_snack_bar/adaptive_snack_bar.dart';
export 'src/chat_view_model/chat_ui_config.dart';
export 'src/chat_view_model/chat_ui_config_client.dart';
export 'src/chat_view_model/chat_ui_config_provider.dart';
export 'src/llm_exception.dart';
export 'src/providers/interface/chat_message.dart';
export 'src/providers/providers.dart';
export 'src/repositories/assync_tool_execution_repository.dart';
export 'src/repositories/message_ack.dart';
export 'src/repositories/model/chat_tool_intent.dart';
export 'src/repositories/persistent_chat_session_repository.dart';
export 'src/session/active_tool_execution_summary.dart';
export 'src/session/history_snapshot.dart';
export 'src/session/provider_llm_chat_session_repository.dart';
export 'src/session/llm_chat_session_repository.dart';
export 'src/session/session_tool_types.dart';
export 'src/styles/styles.dart';
export 'src/views/attachment_action_bar_builder.dart';
export 'src/views/attachment_view_registry.dart';
export 'src/views/chat_input/composer_draft_controller.dart';
export 'src/views/llm_chat_view/llm_chat_view.dart';
export 'src/views/llm_chat_view/llm_response.dart';
