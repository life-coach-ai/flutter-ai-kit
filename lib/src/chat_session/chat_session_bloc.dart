// Copyright 2024 The Flutter Authors. All rights reserved.

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:uuid/uuid.dart';

import '../llm_exception.dart';
import '../platform_helper/platform_helper.dart' as ph;
import '../providers/interface/chat_message.dart';
import '../repositories/assync_tool_execution_repository.dart';
import '../repositories/model/chat_session.dart';
import '../repositories/model/persisted_chat_message.dart';
import '../repositories/persistent_chat_session_repository.dart';
import '../repositories/transcription_repository.dart';
import '../session/active_tool_execution_summary.dart';
import 'chat_intent.dart';
import 'chat_message_mapper.dart';
import 'chat_tool_intent_mapper.dart';
import 'chat_session_event.dart';
import 'chat_state.dart';
import 'chat_ui_effect.dart';

/// Orchestrates one chat session from Firestore-backed repositories.
///
/// Merges [PersistentChatSessionRepository] history/session streams with
/// [AssyncToolExecutionRepository] execution summaries into [ChatState].
class ChatSessionBloc extends Bloc<ChatSessionEvent, ChatState> {
  ChatSessionBloc({
    required String chatSessionId,
    required PersistentChatSessionRepository chatRepository,
    required AssyncToolExecutionRepository toolExecutionRepository,
    required TranscriptionRepository transcriptionRepository,
    required String cancelMessageLabel,
    required String errorMessageLabel,
  })  : _chatSessionId = chatSessionId,
        _chatRepository = chatRepository,
        _toolExecutionRepository = toolExecutionRepository,
        _transcriptionRepository = transcriptionRepository,
        _cancelMessageLabel = cancelMessageLabel,
        _errorMessageLabel = errorMessageLabel,
        super(const ChatState(visibleMessages: [])) {
    on<ChatSessionHistoryReceived>(_onHistoryReceived);
    on<ChatSessionDocumentReceived>(_onSessionDocumentReceived);
    on<ChatSessionToolExecutionsReceived>(_onToolExecutionsReceived);
    on<ChatSessionSendMessageRequested>(_onSendMessageRequested);
    on<ChatSessionSendMessageAcknowledged>(_onSendMessageAcknowledged);
    on<ChatSessionSendMessageFailed>(_onSendMessageFailed);
    on<ChatSessionCancelStreamRequested>(_onCancelStreamRequested);
    on<ChatSessionEditLastTurnRequested>(_onEditLastTurnRequested);
    on<ChatSessionEditCancelled>(_onEditCancelled);
    on<ChatSessionSelectSuggestion>(_onSelectSuggestion);
    on<ChatSessionTranslateSpeechToTextRequested>(_onTranslateSpeechToText);
    on<ChatSessionCancelSpeechToTextRequested>(_onCancelSpeechToText);
    on<ChatSessionUiEffectCleared>(_onUiEffectCleared);
    on<ChatSessionRetryLastFailedTurnRequested>(
      _onRetryLastFailedTurnRequested,
    );

    _subscribe();
  }

  final String _chatSessionId;
  final PersistentChatSessionRepository _chatRepository;
  final AssyncToolExecutionRepository _toolExecutionRepository;
  final TranscriptionRepository _transcriptionRepository;
  final String _cancelMessageLabel;
  final String _errorMessageLabel;
  static const _uuid = Uuid();

  StreamSubscription<List<ChatMessageBase>>? _historySub;
  StreamSubscription<ChatSession?>? _sessionSub;
  StreamSubscription<List<ActiveToolExecutionSummary>>? _executionsSub;

  List<ChatMessageBase> _history = const [];
  ChatSession? _session;
  List<ActiveToolExecutionSummary> _executions = const [];

  String? _pendingSendClientUuid;
  String? _pendingAssistantUuid;
  int _sttGeneration = 0;

  void _subscribe() {
    _historySub = _chatRepository
        .watchChatMessageHistory(_chatSessionId)
        .listen(
          (messages) => add(
            ChatSessionEvent.historyReceived(messages: messages),
          ),
          onError: (Object _, StackTrace _) {},
        );
    _sessionSub = _chatRepository.watchChatSession(_chatSessionId).listen(
          (session) => add(
            ChatSessionEvent.sessionDocumentReceived(session: session),
          ),
          onError: (Object _, StackTrace _) {},
        );
    _executionsSub = _toolExecutionRepository
        .watchToolExecutions(_chatSessionId)
        .listen(
          (executions) => add(
            ChatSessionEvent.toolExecutionsReceived(executions: executions),
          ),
          onError: (Object _, StackTrace _) {},
        );
  }

  /// Dispatches [ChatIntent] from Cubit-agnostic widgets.
  Future<void> submit(ChatIntent intent) => intent.when(
        sendMessage: (text, attachments, editedUserMessageId) async {
          add(
            ChatSessionEvent.sendMessageRequested(
              text: text,
              editedMessageUuid:
                  editedUserMessageId ?? state.composerInitialMessage?.serverUuid,
              chatToolIntents: attachmentsToPersistedChatToolIntents(
                attachments,
              ),
            ),
          );
        },
        cancelStream: () async =>
            add(const ChatSessionEvent.cancelStreamRequested()),
        startEditLastTurn: () async =>
            add(const ChatSessionEvent.editLastTurnRequested()),
        cancelEdit: () async => add(const ChatSessionEvent.editCancelled()),
        selectSuggestion: (suggestion) async => add(
          ChatSessionEvent.selectSuggestion(suggestion: suggestion),
        ),
        translateSpeechToText: (file, attachments) async => add(
          ChatSessionEvent.translateSpeechToTextRequested(file: file),
        ),
        cancelSpeechToText: () async =>
            add(const ChatSessionEvent.cancelSpeechToTextRequested()),
        retryLastFailedTurn: () async => add(
          const ChatSessionEvent.retryLastFailedTurnRequested(),
        ),
      );

  void clearUiEffect() => add(const ChatSessionEvent.uiEffectCleared());

  void _onHistoryReceived(
    ChatSessionHistoryReceived event,
    Emitter<ChatState> emit,
  ) {
    _history = List<ChatMessageBase>.from(event.messages);
    _emitAssembled(emit);
  }

  void _onSessionDocumentReceived(
    ChatSessionDocumentReceived event,
    Emitter<ChatState> emit,
  ) {
    _session = event.session;
    _emitAssembled(emit);
  }

  void _onToolExecutionsReceived(
    ChatSessionToolExecutionsReceived event,
    Emitter<ChatState> emit,
  ) {
    _executions = List<ActiveToolExecutionSummary>.from(event.executions);
    _emitAssembled(emit);
  }

  Future<void> _onSendMessageRequested(
    ChatSessionSendMessageRequested event,
    Emitter<ChatState> emit,
  ) async {
    emit(
      state.copyWith(
        composerInitialMessage: null,
        pendingEditAssistantCopy: null,
        isSending: true,
        isStreamingAssistant: true,
      ),
    );

    final clientUuid = _uuid.v4();
    _pendingSendClientUuid = clientUuid;

    try {
      final ack = await _chatRepository.sendUserChatMessage(
        chatSessionId: _chatSessionId,
        clientMessageUuid: clientUuid,
        userMessageText: event.text,
        editedMessageUuid: event.editedMessageUuid,
        chatToolIntents: event.chatToolIntents,
        activeToolExecutionIntents: event.activeToolExecutionIntents,
      );
      if (!isClosed) {
        add(ChatSessionEvent.sendMessageAcknowledged(ack: ack));
      }
    } on Object catch (error) {
      if (!isClosed) {
        add(ChatSessionEvent.sendMessageFailed(error: error));
      }
    }
  }

  void _onSendMessageAcknowledged(
    ChatSessionSendMessageAcknowledged event,
    Emitter<ChatState> emit,
  ) {
    _pendingAssistantUuid = event.ack.assistantMessageUuid;
    _pendingSendClientUuid = null;
    emit(state.copyWith(isSending: false));
  }

  void _onSendMessageFailed(
    ChatSessionSendMessageFailed event,
    Emitter<ChatState> emit,
  ) {
    _pendingSendClientUuid = null;
    _pendingAssistantUuid = null;
    emit(
      state.copyWith(
        isSending: false,
        isStreamingAssistant: false,
        effectNonce: state.effectNonce + 1,
        lastEffect: ChatUiEffect.showLlmException(
          error: LlmFailureException(event.error.toString()),
        ),
      ),
    );
  }

  Future<void> _onCancelStreamRequested(
    ChatSessionCancelStreamRequested event,
    Emitter<ChatState> emit,
  ) async {
    final messageUuid = _pendingAssistantUuid ?? _pendingSendClientUuid;
    _pendingSendClientUuid = null;
    _pendingAssistantUuid = null;

    var nextState = state.copyWith(
      isSending: false,
      isStreamingAssistant: false,
    );

    if (messageUuid != null) {
      try {
        await _chatRepository.cancelUserChatMessage(
          chatSessionId: _chatSessionId,
          messageUuid: messageUuid,
        );
      } on Object {
        final messages = List<ChatMessage>.from(state.visibleMessages);
        if (messages.isNotEmpty) {
          final last = messages.last;
          if (last.origin.isLlm && (last.text == null || last.text!.isEmpty)) {
            last.append(_cancelMessageLabel);
            nextState = nextState.copyWith(visibleMessages: messages);
          }
        }
      }
    }

    emit(nextState);
  }

  void _onEditLastTurnRequested(
    ChatSessionEditLastTurnRequested event,
    Emitter<ChatState> emit,
  ) {
    if (state.isSending || state.isStreamingAssistant || state.isTranscribing) {
      return;
    }
    if (_history.length < 2) {
      return;
    }
    final assistant = _history.last;
    final user = _history[_history.length - 2];
    if (assistant is! AssistantChatMessage || user is! UserChatMessage) {
      return;
    }

    emit(
      state.copyWith(
        composerInitialMessage: persistedMessageToUi(
          user,
          assistantErrorLabel: _errorMessageLabel,
        ),
        pendingEditAssistantCopy: persistedMessageToUi(
          assistant,
          assistantErrorLabel: _errorMessageLabel,
        ),
      ),
    );
  }

  void _onEditCancelled(
    ChatSessionEditCancelled event,
    Emitter<ChatState> emit,
  ) {
    emit(
      state.copyWith(
        composerInitialMessage: null,
        pendingEditAssistantCopy: null,
      ),
    );
  }

  Future<void> _onSelectSuggestion(
    ChatSessionSelectSuggestion event,
    Emitter<ChatState> emit,
  ) async {
    add(
      ChatSessionEvent.sendMessageRequested(text: event.suggestion),
    );
  }

  Future<void> _onTranslateSpeechToText(
    ChatSessionTranslateSpeechToTextRequested event,
    Emitter<ChatState> emit,
  ) async {
    final generation = ++_sttGeneration;
    emit(state.copyWith(isTranscribing: true));

    try {
      final text = await _transcriptionRepository.transcribe(event.file);
      if (generation != _sttGeneration || isClosed) {
        return;
      }
      emit(
        state.copyWith(
          isTranscribing: false,
          composerInitialMessage: ChatMessage.user(text.trim(), const []),
        ),
      );
      unawaited(ph.deleteFile(event.file));
    } on Object catch (error) {
      if (generation != _sttGeneration || isClosed) {
        return;
      }
      emit(
        state.copyWith(
          isTranscribing: false,
          effectNonce: state.effectNonce + 1,
          lastEffect: ChatUiEffect.showLlmException(
            error: LlmFailureException(error.toString()),
          ),
        ),
      );
    }
  }

  void _onCancelSpeechToText(
    ChatSessionCancelSpeechToTextRequested event,
    Emitter<ChatState> emit,
  ) {
    _sttGeneration++;
    emit(state.copyWith(isTranscribing: false));
  }

  void _onUiEffectCleared(
    ChatSessionUiEffectCleared event,
    Emitter<ChatState> emit,
  ) {
    if (state.lastEffect != null) {
      emit(state.copyWith(lastEffect: null));
    }
  }

  void _emitAssembled(Emitter<ChatState> emit) {
    final generationStatus = lastAssistantGenerationStatus(_history);
    final generationInFlight = generationStatus != null &&
        isAssistantGenerationInFlight(generationStatus);

    if (generationStatus == AssistantGenerationStatus.completed ||
        generationStatus == AssistantGenerationStatus.failed) {
      _pendingAssistantUuid = null;
    }

    emit(
      state.copyWith(
        visibleMessages: persistedMessagesToUi(
          _history,
          assistantErrorLabel: _errorMessageLabel,
        ),
        availableTools: _session?.availableTools ?? const [],
        activeToolExecutionIds: _session?.activeToolExecutionIds ?? const [],
        activeToolExecutions: _executions,
        isStreamingAssistant: generationInFlight ||
            state.isSending ||
            _pendingAssistantUuid != null,
        retryUserMessageServerUuid: retryableUserMessageServerUuid(_history),
      ),
    );
  }

  Future<void> _onRetryLastFailedTurnRequested(
    ChatSessionRetryLastFailedTurnRequested event,
    Emitter<ChatState> emit,
  ) async {
    if (state.isSending ||
        state.isStreamingAssistant ||
        state.isTranscribing) {
      return;
    }
    final userMessageUuid = state.retryUserMessageServerUuid;
    if (userMessageUuid == null) {
      return;
    }
    final userMessage = findUserMessageByServerUuid(_history, userMessageUuid);
    if (userMessage == null) {
      return;
    }

    add(
      ChatSessionEvent.sendMessageRequested(
        text: userMessage.text,
        editedMessageUuid: userMessageUuid,
        chatToolIntents: userMessage.chatToolIntents ?? const [],
      ),
    );
  }

  @override
  Future<void> close() async {
    await _historySub?.cancel();
    await _sessionSub?.cancel();
    await _executionsSub?.cancel();
    return super.close();
  }
}
