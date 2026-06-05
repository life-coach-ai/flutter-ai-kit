// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_session_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatSessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSessionEventCopyWith<$Res> {
  factory $ChatSessionEventCopyWith(
    ChatSessionEvent value,
    $Res Function(ChatSessionEvent) then,
  ) = _$ChatSessionEventCopyWithImpl<$Res, ChatSessionEvent>;
}

/// @nodoc
class _$ChatSessionEventCopyWithImpl<$Res, $Val extends ChatSessionEvent>
    implements $ChatSessionEventCopyWith<$Res> {
  _$ChatSessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatSessionHistoryReceivedImplCopyWith<$Res> {
  factory _$$ChatSessionHistoryReceivedImplCopyWith(
    _$ChatSessionHistoryReceivedImpl value,
    $Res Function(_$ChatSessionHistoryReceivedImpl) then,
  ) = __$$ChatSessionHistoryReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessageBase> messages});
}

/// @nodoc
class __$$ChatSessionHistoryReceivedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<$Res, _$ChatSessionHistoryReceivedImpl>
    implements _$$ChatSessionHistoryReceivedImplCopyWith<$Res> {
  __$$ChatSessionHistoryReceivedImplCopyWithImpl(
    _$ChatSessionHistoryReceivedImpl _value,
    $Res Function(_$ChatSessionHistoryReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$ChatSessionHistoryReceivedImpl(
        messages:
            null == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessageBase>,
      ),
    );
  }
}

/// @nodoc

class _$ChatSessionHistoryReceivedImpl implements ChatSessionHistoryReceived {
  const _$ChatSessionHistoryReceivedImpl({
    required final List<ChatMessageBase> messages,
  }) : _messages = messages;

  final List<ChatMessageBase> _messages;
  @override
  List<ChatMessageBase> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatSessionEvent.historyReceived(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionHistoryReceivedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionHistoryReceivedImplCopyWith<_$ChatSessionHistoryReceivedImpl>
  get copyWith => __$$ChatSessionHistoryReceivedImplCopyWithImpl<
    _$ChatSessionHistoryReceivedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return historyReceived(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return historyReceived?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (historyReceived != null) {
      return historyReceived(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return historyReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return historyReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (historyReceived != null) {
      return historyReceived(this);
    }
    return orElse();
  }
}

abstract class ChatSessionHistoryReceived implements ChatSessionEvent {
  const factory ChatSessionHistoryReceived({
    required final List<ChatMessageBase> messages,
  }) = _$ChatSessionHistoryReceivedImpl;

  List<ChatMessageBase> get messages;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionHistoryReceivedImplCopyWith<_$ChatSessionHistoryReceivedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionDocumentReceivedImplCopyWith<$Res> {
  factory _$$ChatSessionDocumentReceivedImplCopyWith(
    _$ChatSessionDocumentReceivedImpl value,
    $Res Function(_$ChatSessionDocumentReceivedImpl) then,
  ) = __$$ChatSessionDocumentReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatSession? session});
}

/// @nodoc
class __$$ChatSessionDocumentReceivedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<$Res, _$ChatSessionDocumentReceivedImpl>
    implements _$$ChatSessionDocumentReceivedImplCopyWith<$Res> {
  __$$ChatSessionDocumentReceivedImplCopyWithImpl(
    _$ChatSessionDocumentReceivedImpl _value,
    $Res Function(_$ChatSessionDocumentReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? session = freezed}) {
    return _then(
      _$ChatSessionDocumentReceivedImpl(
        session:
            freezed == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                    as ChatSession?,
      ),
    );
  }
}

/// @nodoc

class _$ChatSessionDocumentReceivedImpl implements ChatSessionDocumentReceived {
  const _$ChatSessionDocumentReceivedImpl({this.session});

  @override
  final ChatSession? session;

  @override
  String toString() {
    return 'ChatSessionEvent.sessionDocumentReceived(session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionDocumentReceivedImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionDocumentReceivedImplCopyWith<_$ChatSessionDocumentReceivedImpl>
  get copyWith => __$$ChatSessionDocumentReceivedImplCopyWithImpl<
    _$ChatSessionDocumentReceivedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return sessionDocumentReceived(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return sessionDocumentReceived?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (sessionDocumentReceived != null) {
      return sessionDocumentReceived(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return sessionDocumentReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return sessionDocumentReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (sessionDocumentReceived != null) {
      return sessionDocumentReceived(this);
    }
    return orElse();
  }
}

abstract class ChatSessionDocumentReceived implements ChatSessionEvent {
  const factory ChatSessionDocumentReceived({final ChatSession? session}) =
      _$ChatSessionDocumentReceivedImpl;

  ChatSession? get session;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionDocumentReceivedImplCopyWith<_$ChatSessionDocumentReceivedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionToolExecutionsReceivedImplCopyWith<$Res> {
  factory _$$ChatSessionToolExecutionsReceivedImplCopyWith(
    _$ChatSessionToolExecutionsReceivedImpl value,
    $Res Function(_$ChatSessionToolExecutionsReceivedImpl) then,
  ) = __$$ChatSessionToolExecutionsReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ActiveToolExecutionSummary> executions});
}

/// @nodoc
class __$$ChatSessionToolExecutionsReceivedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<
          $Res,
          _$ChatSessionToolExecutionsReceivedImpl
        >
    implements _$$ChatSessionToolExecutionsReceivedImplCopyWith<$Res> {
  __$$ChatSessionToolExecutionsReceivedImplCopyWithImpl(
    _$ChatSessionToolExecutionsReceivedImpl _value,
    $Res Function(_$ChatSessionToolExecutionsReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? executions = null}) {
    return _then(
      _$ChatSessionToolExecutionsReceivedImpl(
        executions:
            null == executions
                ? _value._executions
                : executions // ignore: cast_nullable_to_non_nullable
                    as List<ActiveToolExecutionSummary>,
      ),
    );
  }
}

/// @nodoc

class _$ChatSessionToolExecutionsReceivedImpl
    implements ChatSessionToolExecutionsReceived {
  const _$ChatSessionToolExecutionsReceivedImpl({
    required final List<ActiveToolExecutionSummary> executions,
  }) : _executions = executions;

  final List<ActiveToolExecutionSummary> _executions;
  @override
  List<ActiveToolExecutionSummary> get executions {
    if (_executions is EqualUnmodifiableListView) return _executions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_executions);
  }

  @override
  String toString() {
    return 'ChatSessionEvent.toolExecutionsReceived(executions: $executions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionToolExecutionsReceivedImpl &&
            const DeepCollectionEquality().equals(
              other._executions,
              _executions,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_executions),
  );

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionToolExecutionsReceivedImplCopyWith<
    _$ChatSessionToolExecutionsReceivedImpl
  >
  get copyWith => __$$ChatSessionToolExecutionsReceivedImplCopyWithImpl<
    _$ChatSessionToolExecutionsReceivedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return toolExecutionsReceived(executions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return toolExecutionsReceived?.call(executions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (toolExecutionsReceived != null) {
      return toolExecutionsReceived(executions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return toolExecutionsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return toolExecutionsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (toolExecutionsReceived != null) {
      return toolExecutionsReceived(this);
    }
    return orElse();
  }
}

abstract class ChatSessionToolExecutionsReceived implements ChatSessionEvent {
  const factory ChatSessionToolExecutionsReceived({
    required final List<ActiveToolExecutionSummary> executions,
  }) = _$ChatSessionToolExecutionsReceivedImpl;

  List<ActiveToolExecutionSummary> get executions;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionToolExecutionsReceivedImplCopyWith<
    _$ChatSessionToolExecutionsReceivedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionSendMessageRequestedImplCopyWith<$Res> {
  factory _$$ChatSessionSendMessageRequestedImplCopyWith(
    _$ChatSessionSendMessageRequestedImpl value,
    $Res Function(_$ChatSessionSendMessageRequestedImpl) then,
  ) = __$$ChatSessionSendMessageRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String text,
    String? editedMessageUuid,
    List<PersistedChatToolIntent> chatToolIntents,
    List<ToolExecutionIntentRequest> activeToolExecutionIntents,
  });
}

/// @nodoc
class __$$ChatSessionSendMessageRequestedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<
          $Res,
          _$ChatSessionSendMessageRequestedImpl
        >
    implements _$$ChatSessionSendMessageRequestedImplCopyWith<$Res> {
  __$$ChatSessionSendMessageRequestedImplCopyWithImpl(
    _$ChatSessionSendMessageRequestedImpl _value,
    $Res Function(_$ChatSessionSendMessageRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? editedMessageUuid = freezed,
    Object? chatToolIntents = null,
    Object? activeToolExecutionIntents = null,
  }) {
    return _then(
      _$ChatSessionSendMessageRequestedImpl(
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
        editedMessageUuid:
            freezed == editedMessageUuid
                ? _value.editedMessageUuid
                : editedMessageUuid // ignore: cast_nullable_to_non_nullable
                    as String?,
        chatToolIntents:
            null == chatToolIntents
                ? _value._chatToolIntents
                : chatToolIntents // ignore: cast_nullable_to_non_nullable
                    as List<PersistedChatToolIntent>,
        activeToolExecutionIntents:
            null == activeToolExecutionIntents
                ? _value._activeToolExecutionIntents
                : activeToolExecutionIntents // ignore: cast_nullable_to_non_nullable
                    as List<ToolExecutionIntentRequest>,
      ),
    );
  }
}

/// @nodoc

class _$ChatSessionSendMessageRequestedImpl
    implements ChatSessionSendMessageRequested {
  const _$ChatSessionSendMessageRequestedImpl({
    required this.text,
    this.editedMessageUuid,
    final List<PersistedChatToolIntent> chatToolIntents =
        const <PersistedChatToolIntent>[],
    final List<ToolExecutionIntentRequest> activeToolExecutionIntents =
        const <ToolExecutionIntentRequest>[],
  }) : _chatToolIntents = chatToolIntents,
       _activeToolExecutionIntents = activeToolExecutionIntents;

  @override
  final String text;
  @override
  final String? editedMessageUuid;
  final List<PersistedChatToolIntent> _chatToolIntents;
  @override
  @JsonKey()
  List<PersistedChatToolIntent> get chatToolIntents {
    if (_chatToolIntents is EqualUnmodifiableListView) return _chatToolIntents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatToolIntents);
  }

  final List<ToolExecutionIntentRequest> _activeToolExecutionIntents;
  @override
  @JsonKey()
  List<ToolExecutionIntentRequest> get activeToolExecutionIntents {
    if (_activeToolExecutionIntents is EqualUnmodifiableListView)
      return _activeToolExecutionIntents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeToolExecutionIntents);
  }

  @override
  String toString() {
    return 'ChatSessionEvent.sendMessageRequested(text: $text, editedMessageUuid: $editedMessageUuid, chatToolIntents: $chatToolIntents, activeToolExecutionIntents: $activeToolExecutionIntents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionSendMessageRequestedImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.editedMessageUuid, editedMessageUuid) ||
                other.editedMessageUuid == editedMessageUuid) &&
            const DeepCollectionEquality().equals(
              other._chatToolIntents,
              _chatToolIntents,
            ) &&
            const DeepCollectionEquality().equals(
              other._activeToolExecutionIntents,
              _activeToolExecutionIntents,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    text,
    editedMessageUuid,
    const DeepCollectionEquality().hash(_chatToolIntents),
    const DeepCollectionEquality().hash(_activeToolExecutionIntents),
  );

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionSendMessageRequestedImplCopyWith<
    _$ChatSessionSendMessageRequestedImpl
  >
  get copyWith => __$$ChatSessionSendMessageRequestedImplCopyWithImpl<
    _$ChatSessionSendMessageRequestedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return sendMessageRequested(
      text,
      editedMessageUuid,
      chatToolIntents,
      activeToolExecutionIntents,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return sendMessageRequested?.call(
      text,
      editedMessageUuid,
      chatToolIntents,
      activeToolExecutionIntents,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (sendMessageRequested != null) {
      return sendMessageRequested(
        text,
        editedMessageUuid,
        chatToolIntents,
        activeToolExecutionIntents,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return sendMessageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return sendMessageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (sendMessageRequested != null) {
      return sendMessageRequested(this);
    }
    return orElse();
  }
}

abstract class ChatSessionSendMessageRequested implements ChatSessionEvent {
  const factory ChatSessionSendMessageRequested({
    required final String text,
    final String? editedMessageUuid,
    final List<PersistedChatToolIntent> chatToolIntents,
    final List<ToolExecutionIntentRequest> activeToolExecutionIntents,
  }) = _$ChatSessionSendMessageRequestedImpl;

  String get text;
  String? get editedMessageUuid;
  List<PersistedChatToolIntent> get chatToolIntents;
  List<ToolExecutionIntentRequest> get activeToolExecutionIntents;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionSendMessageRequestedImplCopyWith<
    _$ChatSessionSendMessageRequestedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionSendMessageAcknowledgedImplCopyWith<$Res> {
  factory _$$ChatSessionSendMessageAcknowledgedImplCopyWith(
    _$ChatSessionSendMessageAcknowledgedImpl value,
    $Res Function(_$ChatSessionSendMessageAcknowledgedImpl) then,
  ) = __$$ChatSessionSendMessageAcknowledgedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageAck ack});
}

/// @nodoc
class __$$ChatSessionSendMessageAcknowledgedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<
          $Res,
          _$ChatSessionSendMessageAcknowledgedImpl
        >
    implements _$$ChatSessionSendMessageAcknowledgedImplCopyWith<$Res> {
  __$$ChatSessionSendMessageAcknowledgedImplCopyWithImpl(
    _$ChatSessionSendMessageAcknowledgedImpl _value,
    $Res Function(_$ChatSessionSendMessageAcknowledgedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ack = null}) {
    return _then(
      _$ChatSessionSendMessageAcknowledgedImpl(
        ack:
            null == ack
                ? _value.ack
                : ack // ignore: cast_nullable_to_non_nullable
                    as MessageAck,
      ),
    );
  }
}

/// @nodoc

class _$ChatSessionSendMessageAcknowledgedImpl
    implements ChatSessionSendMessageAcknowledged {
  const _$ChatSessionSendMessageAcknowledgedImpl({required this.ack});

  @override
  final MessageAck ack;

  @override
  String toString() {
    return 'ChatSessionEvent.sendMessageAcknowledged(ack: $ack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionSendMessageAcknowledgedImpl &&
            (identical(other.ack, ack) || other.ack == ack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ack);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionSendMessageAcknowledgedImplCopyWith<
    _$ChatSessionSendMessageAcknowledgedImpl
  >
  get copyWith => __$$ChatSessionSendMessageAcknowledgedImplCopyWithImpl<
    _$ChatSessionSendMessageAcknowledgedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return sendMessageAcknowledged(ack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return sendMessageAcknowledged?.call(ack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (sendMessageAcknowledged != null) {
      return sendMessageAcknowledged(ack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return sendMessageAcknowledged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return sendMessageAcknowledged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (sendMessageAcknowledged != null) {
      return sendMessageAcknowledged(this);
    }
    return orElse();
  }
}

abstract class ChatSessionSendMessageAcknowledged implements ChatSessionEvent {
  const factory ChatSessionSendMessageAcknowledged({
    required final MessageAck ack,
  }) = _$ChatSessionSendMessageAcknowledgedImpl;

  MessageAck get ack;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionSendMessageAcknowledgedImplCopyWith<
    _$ChatSessionSendMessageAcknowledgedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionSendMessageFailedImplCopyWith<$Res> {
  factory _$$ChatSessionSendMessageFailedImplCopyWith(
    _$ChatSessionSendMessageFailedImpl value,
    $Res Function(_$ChatSessionSendMessageFailedImpl) then,
  ) = __$$ChatSessionSendMessageFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ChatSessionSendMessageFailedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<$Res, _$ChatSessionSendMessageFailedImpl>
    implements _$$ChatSessionSendMessageFailedImplCopyWith<$Res> {
  __$$ChatSessionSendMessageFailedImplCopyWithImpl(
    _$ChatSessionSendMessageFailedImpl _value,
    $Res Function(_$ChatSessionSendMessageFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$ChatSessionSendMessageFailedImpl(
        error: null == error ? _value.error : error,
      ),
    );
  }
}

/// @nodoc

class _$ChatSessionSendMessageFailedImpl
    implements ChatSessionSendMessageFailed {
  const _$ChatSessionSendMessageFailedImpl({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ChatSessionEvent.sendMessageFailed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionSendMessageFailedImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionSendMessageFailedImplCopyWith<
    _$ChatSessionSendMessageFailedImpl
  >
  get copyWith => __$$ChatSessionSendMessageFailedImplCopyWithImpl<
    _$ChatSessionSendMessageFailedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return sendMessageFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return sendMessageFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (sendMessageFailed != null) {
      return sendMessageFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return sendMessageFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return sendMessageFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (sendMessageFailed != null) {
      return sendMessageFailed(this);
    }
    return orElse();
  }
}

abstract class ChatSessionSendMessageFailed implements ChatSessionEvent {
  const factory ChatSessionSendMessageFailed({required final Object error}) =
      _$ChatSessionSendMessageFailedImpl;

  Object get error;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionSendMessageFailedImplCopyWith<
    _$ChatSessionSendMessageFailedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionCancelStreamRequestedImplCopyWith<$Res> {
  factory _$$ChatSessionCancelStreamRequestedImplCopyWith(
    _$ChatSessionCancelStreamRequestedImpl value,
    $Res Function(_$ChatSessionCancelStreamRequestedImpl) then,
  ) = __$$ChatSessionCancelStreamRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatSessionCancelStreamRequestedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<
          $Res,
          _$ChatSessionCancelStreamRequestedImpl
        >
    implements _$$ChatSessionCancelStreamRequestedImplCopyWith<$Res> {
  __$$ChatSessionCancelStreamRequestedImplCopyWithImpl(
    _$ChatSessionCancelStreamRequestedImpl _value,
    $Res Function(_$ChatSessionCancelStreamRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatSessionCancelStreamRequestedImpl
    implements ChatSessionCancelStreamRequested {
  const _$ChatSessionCancelStreamRequestedImpl();

  @override
  String toString() {
    return 'ChatSessionEvent.cancelStreamRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionCancelStreamRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return cancelStreamRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return cancelStreamRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (cancelStreamRequested != null) {
      return cancelStreamRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return cancelStreamRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return cancelStreamRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (cancelStreamRequested != null) {
      return cancelStreamRequested(this);
    }
    return orElse();
  }
}

abstract class ChatSessionCancelStreamRequested implements ChatSessionEvent {
  const factory ChatSessionCancelStreamRequested() =
      _$ChatSessionCancelStreamRequestedImpl;
}

/// @nodoc
abstract class _$$ChatSessionEditLastTurnRequestedImplCopyWith<$Res> {
  factory _$$ChatSessionEditLastTurnRequestedImplCopyWith(
    _$ChatSessionEditLastTurnRequestedImpl value,
    $Res Function(_$ChatSessionEditLastTurnRequestedImpl) then,
  ) = __$$ChatSessionEditLastTurnRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatSessionEditLastTurnRequestedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<
          $Res,
          _$ChatSessionEditLastTurnRequestedImpl
        >
    implements _$$ChatSessionEditLastTurnRequestedImplCopyWith<$Res> {
  __$$ChatSessionEditLastTurnRequestedImplCopyWithImpl(
    _$ChatSessionEditLastTurnRequestedImpl _value,
    $Res Function(_$ChatSessionEditLastTurnRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatSessionEditLastTurnRequestedImpl
    implements ChatSessionEditLastTurnRequested {
  const _$ChatSessionEditLastTurnRequestedImpl();

  @override
  String toString() {
    return 'ChatSessionEvent.editLastTurnRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionEditLastTurnRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return editLastTurnRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return editLastTurnRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (editLastTurnRequested != null) {
      return editLastTurnRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return editLastTurnRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return editLastTurnRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (editLastTurnRequested != null) {
      return editLastTurnRequested(this);
    }
    return orElse();
  }
}

abstract class ChatSessionEditLastTurnRequested implements ChatSessionEvent {
  const factory ChatSessionEditLastTurnRequested() =
      _$ChatSessionEditLastTurnRequestedImpl;
}

/// @nodoc
abstract class _$$ChatSessionEditCancelledImplCopyWith<$Res> {
  factory _$$ChatSessionEditCancelledImplCopyWith(
    _$ChatSessionEditCancelledImpl value,
    $Res Function(_$ChatSessionEditCancelledImpl) then,
  ) = __$$ChatSessionEditCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatSessionEditCancelledImplCopyWithImpl<$Res>
    extends _$ChatSessionEventCopyWithImpl<$Res, _$ChatSessionEditCancelledImpl>
    implements _$$ChatSessionEditCancelledImplCopyWith<$Res> {
  __$$ChatSessionEditCancelledImplCopyWithImpl(
    _$ChatSessionEditCancelledImpl _value,
    $Res Function(_$ChatSessionEditCancelledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatSessionEditCancelledImpl implements ChatSessionEditCancelled {
  const _$ChatSessionEditCancelledImpl();

  @override
  String toString() {
    return 'ChatSessionEvent.editCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionEditCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return editCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return editCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (editCancelled != null) {
      return editCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return editCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return editCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (editCancelled != null) {
      return editCancelled(this);
    }
    return orElse();
  }
}

abstract class ChatSessionEditCancelled implements ChatSessionEvent {
  const factory ChatSessionEditCancelled() = _$ChatSessionEditCancelledImpl;
}

/// @nodoc
abstract class _$$ChatSessionSelectSuggestionImplCopyWith<$Res> {
  factory _$$ChatSessionSelectSuggestionImplCopyWith(
    _$ChatSessionSelectSuggestionImpl value,
    $Res Function(_$ChatSessionSelectSuggestionImpl) then,
  ) = __$$ChatSessionSelectSuggestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String suggestion});
}

/// @nodoc
class __$$ChatSessionSelectSuggestionImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<$Res, _$ChatSessionSelectSuggestionImpl>
    implements _$$ChatSessionSelectSuggestionImplCopyWith<$Res> {
  __$$ChatSessionSelectSuggestionImplCopyWithImpl(
    _$ChatSessionSelectSuggestionImpl _value,
    $Res Function(_$ChatSessionSelectSuggestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? suggestion = null}) {
    return _then(
      _$ChatSessionSelectSuggestionImpl(
        suggestion:
            null == suggestion
                ? _value.suggestion
                : suggestion // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ChatSessionSelectSuggestionImpl implements ChatSessionSelectSuggestion {
  const _$ChatSessionSelectSuggestionImpl({required this.suggestion});

  @override
  final String suggestion;

  @override
  String toString() {
    return 'ChatSessionEvent.selectSuggestion(suggestion: $suggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionSelectSuggestionImpl &&
            (identical(other.suggestion, suggestion) ||
                other.suggestion == suggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, suggestion);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionSelectSuggestionImplCopyWith<_$ChatSessionSelectSuggestionImpl>
  get copyWith => __$$ChatSessionSelectSuggestionImplCopyWithImpl<
    _$ChatSessionSelectSuggestionImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return selectSuggestion(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return selectSuggestion?.call(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (selectSuggestion != null) {
      return selectSuggestion(suggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return selectSuggestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return selectSuggestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (selectSuggestion != null) {
      return selectSuggestion(this);
    }
    return orElse();
  }
}

abstract class ChatSessionSelectSuggestion implements ChatSessionEvent {
  const factory ChatSessionSelectSuggestion({
    required final String suggestion,
  }) = _$ChatSessionSelectSuggestionImpl;

  String get suggestion;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionSelectSuggestionImplCopyWith<_$ChatSessionSelectSuggestionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionTranslateSpeechToTextRequestedImplCopyWith<$Res> {
  factory _$$ChatSessionTranslateSpeechToTextRequestedImplCopyWith(
    _$ChatSessionTranslateSpeechToTextRequestedImpl value,
    $Res Function(_$ChatSessionTranslateSpeechToTextRequestedImpl) then,
  ) = __$$ChatSessionTranslateSpeechToTextRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile file});
}

/// @nodoc
class __$$ChatSessionTranslateSpeechToTextRequestedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<
          $Res,
          _$ChatSessionTranslateSpeechToTextRequestedImpl
        >
    implements _$$ChatSessionTranslateSpeechToTextRequestedImplCopyWith<$Res> {
  __$$ChatSessionTranslateSpeechToTextRequestedImplCopyWithImpl(
    _$ChatSessionTranslateSpeechToTextRequestedImpl _value,
    $Res Function(_$ChatSessionTranslateSpeechToTextRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? file = null}) {
    return _then(
      _$ChatSessionTranslateSpeechToTextRequestedImpl(
        file:
            null == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                    as XFile,
      ),
    );
  }
}

/// @nodoc

class _$ChatSessionTranslateSpeechToTextRequestedImpl
    implements ChatSessionTranslateSpeechToTextRequested {
  const _$ChatSessionTranslateSpeechToTextRequestedImpl({required this.file});

  @override
  final XFile file;

  @override
  String toString() {
    return 'ChatSessionEvent.translateSpeechToTextRequested(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionTranslateSpeechToTextRequestedImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionTranslateSpeechToTextRequestedImplCopyWith<
    _$ChatSessionTranslateSpeechToTextRequestedImpl
  >
  get copyWith => __$$ChatSessionTranslateSpeechToTextRequestedImplCopyWithImpl<
    _$ChatSessionTranslateSpeechToTextRequestedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return translateSpeechToTextRequested(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return translateSpeechToTextRequested?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (translateSpeechToTextRequested != null) {
      return translateSpeechToTextRequested(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return translateSpeechToTextRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return translateSpeechToTextRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (translateSpeechToTextRequested != null) {
      return translateSpeechToTextRequested(this);
    }
    return orElse();
  }
}

abstract class ChatSessionTranslateSpeechToTextRequested
    implements ChatSessionEvent {
  const factory ChatSessionTranslateSpeechToTextRequested({
    required final XFile file,
  }) = _$ChatSessionTranslateSpeechToTextRequestedImpl;

  XFile get file;

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionTranslateSpeechToTextRequestedImplCopyWith<
    _$ChatSessionTranslateSpeechToTextRequestedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionCancelSpeechToTextRequestedImplCopyWith<$Res> {
  factory _$$ChatSessionCancelSpeechToTextRequestedImplCopyWith(
    _$ChatSessionCancelSpeechToTextRequestedImpl value,
    $Res Function(_$ChatSessionCancelSpeechToTextRequestedImpl) then,
  ) = __$$ChatSessionCancelSpeechToTextRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatSessionCancelSpeechToTextRequestedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<
          $Res,
          _$ChatSessionCancelSpeechToTextRequestedImpl
        >
    implements _$$ChatSessionCancelSpeechToTextRequestedImplCopyWith<$Res> {
  __$$ChatSessionCancelSpeechToTextRequestedImplCopyWithImpl(
    _$ChatSessionCancelSpeechToTextRequestedImpl _value,
    $Res Function(_$ChatSessionCancelSpeechToTextRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatSessionCancelSpeechToTextRequestedImpl
    implements ChatSessionCancelSpeechToTextRequested {
  const _$ChatSessionCancelSpeechToTextRequestedImpl();

  @override
  String toString() {
    return 'ChatSessionEvent.cancelSpeechToTextRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionCancelSpeechToTextRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return cancelSpeechToTextRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return cancelSpeechToTextRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (cancelSpeechToTextRequested != null) {
      return cancelSpeechToTextRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return cancelSpeechToTextRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return cancelSpeechToTextRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (cancelSpeechToTextRequested != null) {
      return cancelSpeechToTextRequested(this);
    }
    return orElse();
  }
}

abstract class ChatSessionCancelSpeechToTextRequested
    implements ChatSessionEvent {
  const factory ChatSessionCancelSpeechToTextRequested() =
      _$ChatSessionCancelSpeechToTextRequestedImpl;
}

/// @nodoc
abstract class _$$ChatSessionUiEffectClearedImplCopyWith<$Res> {
  factory _$$ChatSessionUiEffectClearedImplCopyWith(
    _$ChatSessionUiEffectClearedImpl value,
    $Res Function(_$ChatSessionUiEffectClearedImpl) then,
  ) = __$$ChatSessionUiEffectClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatSessionUiEffectClearedImplCopyWithImpl<$Res>
    extends
        _$ChatSessionEventCopyWithImpl<$Res, _$ChatSessionUiEffectClearedImpl>
    implements _$$ChatSessionUiEffectClearedImplCopyWith<$Res> {
  __$$ChatSessionUiEffectClearedImplCopyWithImpl(
    _$ChatSessionUiEffectClearedImpl _value,
    $Res Function(_$ChatSessionUiEffectClearedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatSessionUiEffectClearedImpl implements ChatSessionUiEffectCleared {
  const _$ChatSessionUiEffectClearedImpl();

  @override
  String toString() {
    return 'ChatSessionEvent.uiEffectCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionUiEffectClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatMessageBase> messages) historyReceived,
    required TResult Function(ChatSession? session) sessionDocumentReceived,
    required TResult Function(List<ActiveToolExecutionSummary> executions)
    toolExecutionsReceived,
    required TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )
    sendMessageRequested,
    required TResult Function(MessageAck ack) sendMessageAcknowledged,
    required TResult Function(Object error) sendMessageFailed,
    required TResult Function() cancelStreamRequested,
    required TResult Function() editLastTurnRequested,
    required TResult Function() editCancelled,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(XFile file) translateSpeechToTextRequested,
    required TResult Function() cancelSpeechToTextRequested,
    required TResult Function() uiEffectCleared,
  }) {
    return uiEffectCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ChatMessageBase> messages)? historyReceived,
    TResult? Function(ChatSession? session)? sessionDocumentReceived,
    TResult? Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult? Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult? Function(MessageAck ack)? sendMessageAcknowledged,
    TResult? Function(Object error)? sendMessageFailed,
    TResult? Function()? cancelStreamRequested,
    TResult? Function()? editLastTurnRequested,
    TResult? Function()? editCancelled,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file)? translateSpeechToTextRequested,
    TResult? Function()? cancelSpeechToTextRequested,
    TResult? Function()? uiEffectCleared,
  }) {
    return uiEffectCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatMessageBase> messages)? historyReceived,
    TResult Function(ChatSession? session)? sessionDocumentReceived,
    TResult Function(List<ActiveToolExecutionSummary> executions)?
    toolExecutionsReceived,
    TResult Function(
      String text,
      String? editedMessageUuid,
      List<PersistedChatToolIntent> chatToolIntents,
      List<ToolExecutionIntentRequest> activeToolExecutionIntents,
    )?
    sendMessageRequested,
    TResult Function(MessageAck ack)? sendMessageAcknowledged,
    TResult Function(Object error)? sendMessageFailed,
    TResult Function()? cancelStreamRequested,
    TResult Function()? editLastTurnRequested,
    TResult Function()? editCancelled,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file)? translateSpeechToTextRequested,
    TResult Function()? cancelSpeechToTextRequested,
    TResult Function()? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (uiEffectCleared != null) {
      return uiEffectCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatSessionHistoryReceived value) historyReceived,
    required TResult Function(ChatSessionDocumentReceived value)
    sessionDocumentReceived,
    required TResult Function(ChatSessionToolExecutionsReceived value)
    toolExecutionsReceived,
    required TResult Function(ChatSessionSendMessageRequested value)
    sendMessageRequested,
    required TResult Function(ChatSessionSendMessageAcknowledged value)
    sendMessageAcknowledged,
    required TResult Function(ChatSessionSendMessageFailed value)
    sendMessageFailed,
    required TResult Function(ChatSessionCancelStreamRequested value)
    cancelStreamRequested,
    required TResult Function(ChatSessionEditLastTurnRequested value)
    editLastTurnRequested,
    required TResult Function(ChatSessionEditCancelled value) editCancelled,
    required TResult Function(ChatSessionSelectSuggestion value)
    selectSuggestion,
    required TResult Function(ChatSessionTranslateSpeechToTextRequested value)
    translateSpeechToTextRequested,
    required TResult Function(ChatSessionCancelSpeechToTextRequested value)
    cancelSpeechToTextRequested,
    required TResult Function(ChatSessionUiEffectCleared value) uiEffectCleared,
  }) {
    return uiEffectCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult? Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult? Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult? Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult? Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult? Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult? Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult? Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult? Function(ChatSessionEditCancelled value)? editCancelled,
    TResult? Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult? Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult? Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult? Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
  }) {
    return uiEffectCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatSessionHistoryReceived value)? historyReceived,
    TResult Function(ChatSessionDocumentReceived value)?
    sessionDocumentReceived,
    TResult Function(ChatSessionToolExecutionsReceived value)?
    toolExecutionsReceived,
    TResult Function(ChatSessionSendMessageRequested value)?
    sendMessageRequested,
    TResult Function(ChatSessionSendMessageAcknowledged value)?
    sendMessageAcknowledged,
    TResult Function(ChatSessionSendMessageFailed value)? sendMessageFailed,
    TResult Function(ChatSessionCancelStreamRequested value)?
    cancelStreamRequested,
    TResult Function(ChatSessionEditLastTurnRequested value)?
    editLastTurnRequested,
    TResult Function(ChatSessionEditCancelled value)? editCancelled,
    TResult Function(ChatSessionSelectSuggestion value)? selectSuggestion,
    TResult Function(ChatSessionTranslateSpeechToTextRequested value)?
    translateSpeechToTextRequested,
    TResult Function(ChatSessionCancelSpeechToTextRequested value)?
    cancelSpeechToTextRequested,
    TResult Function(ChatSessionUiEffectCleared value)? uiEffectCleared,
    required TResult orElse(),
  }) {
    if (uiEffectCleared != null) {
      return uiEffectCleared(this);
    }
    return orElse();
  }
}

abstract class ChatSessionUiEffectCleared implements ChatSessionEvent {
  const factory ChatSessionUiEffectCleared() = _$ChatSessionUiEffectClearedImpl;
}
