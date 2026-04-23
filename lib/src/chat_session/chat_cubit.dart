// Copyright 2024 The Flutter Authors. All rights reserved.

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cross_file/cross_file.dart';

import '../llm_exception.dart';
import '../providers/interface/attachments.dart' show Attachment, FileAttachment;
import '../providers/interface/chat_message.dart';
import '../providers/interface/llm_provider.dart';
import '../platform_helper/platform_helper.dart' as ph;
import '../session/history_snapshot.dart';
import '../session/llm_chat_session_repository.dart';
import '../views/llm_chat_view/llm_response.dart';
import 'chat_intent.dart';
import 'chat_state.dart';
import 'chat_ui_effect.dart';

/// Orchestrates chat session UX; aggregates repository snapshots into [ChatState].
class ChatCubit extends Cubit<ChatState> {
  ChatCubit({
    required LlmChatSessionRepository repository,
    required String cancelMessageLabel,
    required String errorMessageLabel,
    LlmStreamGenerator? messageSender,
    SpeechToTextConverter? speechToText,
  })  : _repository = repository,
        _cancelMessageLabel = cancelMessageLabel,
        _errorMessageLabel = errorMessageLabel,
        _messageSender = messageSender,
        _speechToText = speechToText,
        super(ChatCubit._initialFromRepo(repository)) {
    _historySub = repository.watchHistory().listen(
          _onHistorySnapshot,
          onError: (Object _, StackTrace _) {},
        );
  }

  final LlmChatSessionRepository _repository;
  final String _cancelMessageLabel;
  final String _errorMessageLabel;
  final LlmStreamGenerator? _messageSender;
  final SpeechToTextConverter? _speechToText;

  StreamSubscription<HistorySnapshot>? _historySub;
  LlmResponse? _pendingSend;
  LlmResponse? _pendingStt;

  static ChatState _initialFromRepo(LlmChatSessionRepository r) {
    final s = r.readSnapshot();
    return ChatState(
      visibleMessages: List<ChatMessage>.from(s.messages),
      availableTools: List.from(s.availableTools),
      isAwaitingAvailableToolsUpdate: s.isAwaitingAvailableToolsUpdate,
      usedTools: Set<String>.from(s.usedTools),
      activeToolExecutionIds: List<String>.from(s.activeToolExecutionIds),
      activeToolExecutions: List.from(s.activeToolExecutions),
    );
  }

  void _onHistorySnapshot(HistorySnapshot snapshot) {
    emit(
      state.copyWith(
        visibleMessages: List<ChatMessage>.from(snapshot.messages),
        availableTools: List.from(snapshot.availableTools),
        isAwaitingAvailableToolsUpdate: snapshot.isAwaitingAvailableToolsUpdate,
        usedTools: Set<String>.from(snapshot.usedTools),
        activeToolExecutionIds: List<String>.from(snapshot.activeToolExecutionIds),
        activeToolExecutions: List.from(snapshot.activeToolExecutions),
      ),
    );
  }

  void clearUiEffect() {
    if (state.lastEffect != null) {
      emit(state.copyWith(lastEffect: null));
    }
  }

  /// Dispatches [ChatIntent] from Cubit-agnostic widgets.
  Future<void> submit(ChatIntent intent) async {
    await intent.when(
      sendMessage: (text, attachments, editedUserMessageId) =>
          _sendMessage(text, attachments, editedUserMessageId),
      cancelStream: () async => _pendingSend?.cancel(),
      startEditLastTurn: () async => _startEdit(),
      cancelEdit: () async => _cancelEdit(),
      selectSuggestion: (s) async => _sendMessage(s, const [], null),
      translateSpeechToText: (file, attachments) async =>
          _translateStt(file, attachments),
      cancelSpeechToText: () async => _pendingStt?.cancel(),
    );
  }

  Future<void> _sendMessage(
    String prompt,
    Iterable<Attachment> attachments,
    String? editedUserMessageId,
  ) async {
    final editedId = editedUserMessageId ?? state.composerInitialMessage?.id;

    emit(
      state.copyWith(
        composerInitialMessage: null,
        pendingEditAssistantCopy: null,
        isSending: true,
        isStreamingAssistant: true,
      ),
    );

    final send =
        _messageSender ??
        (
          String p, {
          required Iterable<Attachment> attachments,
          String? editedUserMessageId,
        }) =>
            _repository.sendMessageStream(
              p,
              attachments: attachments,
              editedUserMessageId: editedUserMessageId,
            );

    final stream = send(
      prompt,
      attachments: attachments,
      editedUserMessageId: editedId,
    );

    _pendingSend?.cancel();
    _pendingSend = LlmResponse(
      stream: stream,
      onUpdate: (_) {},
      onDone: (error) => _onSendDone(error),
    );
  }

  Future<void> _onSendDone(LlmException? error) async {
    _pendingSend = null;
    emit(
      state.copyWith(
        isSending: false,
        isStreamingAssistant: false,
      ),
    );
    await _handleStreamException(error);
  }

  Future<void> _handleStreamException(LlmException? error) async {
    if (error == null) {
      return;
    }

    final msgs = List<ChatMessage>.from(state.visibleMessages);
    if (msgs.isEmpty) {
      _emitEffect(error);
      return;
    }
    final llmMessage = msgs.last;
    if (llmMessage.origin.isLlm && llmMessage.text == null) {
      llmMessage.append(
        error is LlmCancelException
            ? _cancelMessageLabel
            : _errorMessageLabel,
      );
      emit(
        state.copyWith(
          visibleMessages: msgs,
          effectNonce: state.effectNonce + 1,
          lastEffect: ChatUiEffect.showLlmException(error: error),
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        effectNonce: state.effectNonce + 1,
        lastEffect: ChatUiEffect.showLlmException(error: error),
      ),
    );
  }

  void _emitEffect(LlmException error) {
    emit(
      state.copyWith(
        effectNonce: state.effectNonce + 1,
        lastEffect: ChatUiEffect.showLlmException(error: error),
      ),
    );
  }

  void _startEdit() {
    if (_pendingSend != null) {
      return;
    }
    final snap = _repository.readSnapshot();
    final list = snap.messages.toList();
    if (list.length < 2) {
      return;
    }
    final llmMessage = list.removeLast();
    if (!llmMessage.origin.isLlm) {
      return;
    }
    final userMessage = list.removeLast();
    if (!userMessage.origin.isUser) {
      return;
    }

    _repository.replaceSessionMessages(list);

    emit(
      state.copyWith(
        composerInitialMessage: userMessage,
        pendingEditAssistantCopy: llmMessage,
      ),
    );
  }

  void _cancelEdit() {
    final user = state.composerInitialMessage;
    final assistant = state.pendingEditAssistantCopy;
    if (user == null || assistant == null) {
      return;
    }
    final merged = [...state.visibleMessages, user, assistant];
    _repository.replaceSessionMessages(merged);
    emit(
      state.copyWith(
        composerInitialMessage: null,
        pendingEditAssistantCopy: null,
        visibleMessages:
            List<ChatMessage>.from(_repository.readSnapshot().messages),
      ),
    );
  }

  Future<void> _translateStt(
    XFile file,
    Iterable<Attachment> currentAttachments,
  ) async {
    emit(state.copyWith(isTranscribing: true));

    final converter = _speechToText;
    final stream =
        converter?.call(file) ??
        _repository.generateStream(
          _transcriptionPrompt,
          attachments: [
            await FileAttachment.fromFile(file),
          ],
        );

    final buffer = StringBuffer();
    _pendingStt?.cancel();
    _pendingStt = LlmResponse(
      stream: stream,
      onUpdate: buffer.write,
      onDone: (error) async => _onSttDone(
            error,
            buffer.toString().trim(),
            file,
            currentAttachments,
          ),
    );
  }

  static const _transcriptionPrompt =
      'translate the attached audio to text; provide the result of that '
      'translation as just the text of the translation itself. be careful to '
      'separate the background audio from the foreground audio and only '
      'provide the result of translating the foreground audio.';

  Future<void> _onSttDone(
    LlmException? error,
    String text,
    XFile file,
    Iterable<Attachment> attachments,
  ) async {
    _pendingStt = null;
    emit(
      state.copyWith(
        isTranscribing: false,
        composerInitialMessage: ChatMessage.user(text, attachments),
      ),
    );
    unawaited(ph.deleteFile(file));
    await _handleStreamException(error);
  }

  @override
  Future<void> close() async {
    await _historySub?.cancel();
    _pendingSend?.cancel();
    _pendingStt?.cancel();
    return super.close();
  }
}
