// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatState {
  List<ChatMessage> get visibleMessages => throw _privateConstructorUsedError;
  List<AvailableToolInfo> get availableTools =>
      throw _privateConstructorUsedError;
  bool get isAwaitingAvailableToolsUpdate => throw _privateConstructorUsedError;
  Set<String> get usedTools => throw _privateConstructorUsedError;
  List<String> get activeToolExecutionIds => throw _privateConstructorUsedError;
  List<ActiveToolExecutionSummary> get activeToolExecutions =>
      throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;
  bool get isStreamingAssistant => throw _privateConstructorUsedError;
  ChatMessage? get composerInitialMessage => throw _privateConstructorUsedError;
  ChatMessage? get pendingEditAssistantCopy =>
      throw _privateConstructorUsedError;
  bool get isTranscribing => throw _privateConstructorUsedError;

  /// Monotonic nonce so [BlocListener] can observe each effect once.
  int get effectNonce => throw _privateConstructorUsedError;
  ChatUiEffect? get lastEffect => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({
    List<ChatMessage> visibleMessages,
    List<AvailableToolInfo> availableTools,
    bool isAwaitingAvailableToolsUpdate,
    Set<String> usedTools,
    List<String> activeToolExecutionIds,
    List<ActiveToolExecutionSummary> activeToolExecutions,
    bool isSending,
    bool isStreamingAssistant,
    ChatMessage? composerInitialMessage,
    ChatMessage? pendingEditAssistantCopy,
    bool isTranscribing,
    int effectNonce,
    ChatUiEffect? lastEffect,
  });

  $ChatUiEffectCopyWith<$Res>? get lastEffect;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibleMessages = null,
    Object? availableTools = null,
    Object? isAwaitingAvailableToolsUpdate = null,
    Object? usedTools = null,
    Object? activeToolExecutionIds = null,
    Object? activeToolExecutions = null,
    Object? isSending = null,
    Object? isStreamingAssistant = null,
    Object? composerInitialMessage = freezed,
    Object? pendingEditAssistantCopy = freezed,
    Object? isTranscribing = null,
    Object? effectNonce = null,
    Object? lastEffect = freezed,
  }) {
    return _then(
      _value.copyWith(
            visibleMessages:
                null == visibleMessages
                    ? _value.visibleMessages
                    : visibleMessages // ignore: cast_nullable_to_non_nullable
                        as List<ChatMessage>,
            availableTools:
                null == availableTools
                    ? _value.availableTools
                    : availableTools // ignore: cast_nullable_to_non_nullable
                        as List<AvailableToolInfo>,
            isAwaitingAvailableToolsUpdate:
                null == isAwaitingAvailableToolsUpdate
                    ? _value.isAwaitingAvailableToolsUpdate
                    : isAwaitingAvailableToolsUpdate // ignore: cast_nullable_to_non_nullable
                        as bool,
            usedTools:
                null == usedTools
                    ? _value.usedTools
                    : usedTools // ignore: cast_nullable_to_non_nullable
                        as Set<String>,
            activeToolExecutionIds:
                null == activeToolExecutionIds
                    ? _value.activeToolExecutionIds
                    : activeToolExecutionIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            activeToolExecutions:
                null == activeToolExecutions
                    ? _value.activeToolExecutions
                    : activeToolExecutions // ignore: cast_nullable_to_non_nullable
                        as List<ActiveToolExecutionSummary>,
            isSending:
                null == isSending
                    ? _value.isSending
                    : isSending // ignore: cast_nullable_to_non_nullable
                        as bool,
            isStreamingAssistant:
                null == isStreamingAssistant
                    ? _value.isStreamingAssistant
                    : isStreamingAssistant // ignore: cast_nullable_to_non_nullable
                        as bool,
            composerInitialMessage:
                freezed == composerInitialMessage
                    ? _value.composerInitialMessage
                    : composerInitialMessage // ignore: cast_nullable_to_non_nullable
                        as ChatMessage?,
            pendingEditAssistantCopy:
                freezed == pendingEditAssistantCopy
                    ? _value.pendingEditAssistantCopy
                    : pendingEditAssistantCopy // ignore: cast_nullable_to_non_nullable
                        as ChatMessage?,
            isTranscribing:
                null == isTranscribing
                    ? _value.isTranscribing
                    : isTranscribing // ignore: cast_nullable_to_non_nullable
                        as bool,
            effectNonce:
                null == effectNonce
                    ? _value.effectNonce
                    : effectNonce // ignore: cast_nullable_to_non_nullable
                        as int,
            lastEffect:
                freezed == lastEffect
                    ? _value.lastEffect
                    : lastEffect // ignore: cast_nullable_to_non_nullable
                        as ChatUiEffect?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatUiEffectCopyWith<$Res>? get lastEffect {
    if (_value.lastEffect == null) {
      return null;
    }

    return $ChatUiEffectCopyWith<$Res>(_value.lastEffect!, (value) {
      return _then(_value.copyWith(lastEffect: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
    _$ChatStateImpl value,
    $Res Function(_$ChatStateImpl) then,
  ) = __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ChatMessage> visibleMessages,
    List<AvailableToolInfo> availableTools,
    bool isAwaitingAvailableToolsUpdate,
    Set<String> usedTools,
    List<String> activeToolExecutionIds,
    List<ActiveToolExecutionSummary> activeToolExecutions,
    bool isSending,
    bool isStreamingAssistant,
    ChatMessage? composerInitialMessage,
    ChatMessage? pendingEditAssistantCopy,
    bool isTranscribing,
    int effectNonce,
    ChatUiEffect? lastEffect,
  });

  @override
  $ChatUiEffectCopyWith<$Res>? get lastEffect;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
    _$ChatStateImpl _value,
    $Res Function(_$ChatStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibleMessages = null,
    Object? availableTools = null,
    Object? isAwaitingAvailableToolsUpdate = null,
    Object? usedTools = null,
    Object? activeToolExecutionIds = null,
    Object? activeToolExecutions = null,
    Object? isSending = null,
    Object? isStreamingAssistant = null,
    Object? composerInitialMessage = freezed,
    Object? pendingEditAssistantCopy = freezed,
    Object? isTranscribing = null,
    Object? effectNonce = null,
    Object? lastEffect = freezed,
  }) {
    return _then(
      _$ChatStateImpl(
        visibleMessages:
            null == visibleMessages
                ? _value._visibleMessages
                : visibleMessages // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        availableTools:
            null == availableTools
                ? _value._availableTools
                : availableTools // ignore: cast_nullable_to_non_nullable
                    as List<AvailableToolInfo>,
        isAwaitingAvailableToolsUpdate:
            null == isAwaitingAvailableToolsUpdate
                ? _value.isAwaitingAvailableToolsUpdate
                : isAwaitingAvailableToolsUpdate // ignore: cast_nullable_to_non_nullable
                    as bool,
        usedTools:
            null == usedTools
                ? _value._usedTools
                : usedTools // ignore: cast_nullable_to_non_nullable
                    as Set<String>,
        activeToolExecutionIds:
            null == activeToolExecutionIds
                ? _value._activeToolExecutionIds
                : activeToolExecutionIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        activeToolExecutions:
            null == activeToolExecutions
                ? _value._activeToolExecutions
                : activeToolExecutions // ignore: cast_nullable_to_non_nullable
                    as List<ActiveToolExecutionSummary>,
        isSending:
            null == isSending
                ? _value.isSending
                : isSending // ignore: cast_nullable_to_non_nullable
                    as bool,
        isStreamingAssistant:
            null == isStreamingAssistant
                ? _value.isStreamingAssistant
                : isStreamingAssistant // ignore: cast_nullable_to_non_nullable
                    as bool,
        composerInitialMessage:
            freezed == composerInitialMessage
                ? _value.composerInitialMessage
                : composerInitialMessage // ignore: cast_nullable_to_non_nullable
                    as ChatMessage?,
        pendingEditAssistantCopy:
            freezed == pendingEditAssistantCopy
                ? _value.pendingEditAssistantCopy
                : pendingEditAssistantCopy // ignore: cast_nullable_to_non_nullable
                    as ChatMessage?,
        isTranscribing:
            null == isTranscribing
                ? _value.isTranscribing
                : isTranscribing // ignore: cast_nullable_to_non_nullable
                    as bool,
        effectNonce:
            null == effectNonce
                ? _value.effectNonce
                : effectNonce // ignore: cast_nullable_to_non_nullable
                    as int,
        lastEffect:
            freezed == lastEffect
                ? _value.lastEffect
                : lastEffect // ignore: cast_nullable_to_non_nullable
                    as ChatUiEffect?,
      ),
    );
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl({
    required final List<ChatMessage> visibleMessages,
    final List<AvailableToolInfo> availableTools = const [],
    this.isAwaitingAvailableToolsUpdate = false,
    final Set<String> usedTools = const {},
    final List<String> activeToolExecutionIds = const [],
    final List<ActiveToolExecutionSummary> activeToolExecutions = const [],
    this.isSending = false,
    this.isStreamingAssistant = false,
    this.composerInitialMessage,
    this.pendingEditAssistantCopy,
    this.isTranscribing = false,
    this.effectNonce = 0,
    this.lastEffect,
  }) : _visibleMessages = visibleMessages,
       _availableTools = availableTools,
       _usedTools = usedTools,
       _activeToolExecutionIds = activeToolExecutionIds,
       _activeToolExecutions = activeToolExecutions;

  final List<ChatMessage> _visibleMessages;
  @override
  List<ChatMessage> get visibleMessages {
    if (_visibleMessages is EqualUnmodifiableListView) return _visibleMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibleMessages);
  }

  final List<AvailableToolInfo> _availableTools;
  @override
  @JsonKey()
  List<AvailableToolInfo> get availableTools {
    if (_availableTools is EqualUnmodifiableListView) return _availableTools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableTools);
  }

  @override
  @JsonKey()
  final bool isAwaitingAvailableToolsUpdate;
  final Set<String> _usedTools;
  @override
  @JsonKey()
  Set<String> get usedTools {
    if (_usedTools is EqualUnmodifiableSetView) return _usedTools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_usedTools);
  }

  final List<String> _activeToolExecutionIds;
  @override
  @JsonKey()
  List<String> get activeToolExecutionIds {
    if (_activeToolExecutionIds is EqualUnmodifiableListView)
      return _activeToolExecutionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeToolExecutionIds);
  }

  final List<ActiveToolExecutionSummary> _activeToolExecutions;
  @override
  @JsonKey()
  List<ActiveToolExecutionSummary> get activeToolExecutions {
    if (_activeToolExecutions is EqualUnmodifiableListView)
      return _activeToolExecutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeToolExecutions);
  }

  @override
  @JsonKey()
  final bool isSending;
  @override
  @JsonKey()
  final bool isStreamingAssistant;
  @override
  final ChatMessage? composerInitialMessage;
  @override
  final ChatMessage? pendingEditAssistantCopy;
  @override
  @JsonKey()
  final bool isTranscribing;

  /// Monotonic nonce so [BlocListener] can observe each effect once.
  @override
  @JsonKey()
  final int effectNonce;
  @override
  final ChatUiEffect? lastEffect;

  @override
  String toString() {
    return 'ChatState(visibleMessages: $visibleMessages, availableTools: $availableTools, isAwaitingAvailableToolsUpdate: $isAwaitingAvailableToolsUpdate, usedTools: $usedTools, activeToolExecutionIds: $activeToolExecutionIds, activeToolExecutions: $activeToolExecutions, isSending: $isSending, isStreamingAssistant: $isStreamingAssistant, composerInitialMessage: $composerInitialMessage, pendingEditAssistantCopy: $pendingEditAssistantCopy, isTranscribing: $isTranscribing, effectNonce: $effectNonce, lastEffect: $lastEffect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(
              other._visibleMessages,
              _visibleMessages,
            ) &&
            const DeepCollectionEquality().equals(
              other._availableTools,
              _availableTools,
            ) &&
            (identical(
                  other.isAwaitingAvailableToolsUpdate,
                  isAwaitingAvailableToolsUpdate,
                ) ||
                other.isAwaitingAvailableToolsUpdate ==
                    isAwaitingAvailableToolsUpdate) &&
            const DeepCollectionEquality().equals(
              other._usedTools,
              _usedTools,
            ) &&
            const DeepCollectionEquality().equals(
              other._activeToolExecutionIds,
              _activeToolExecutionIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._activeToolExecutions,
              _activeToolExecutions,
            ) &&
            (identical(other.isSending, isSending) ||
                other.isSending == isSending) &&
            (identical(other.isStreamingAssistant, isStreamingAssistant) ||
                other.isStreamingAssistant == isStreamingAssistant) &&
            (identical(other.composerInitialMessage, composerInitialMessage) ||
                other.composerInitialMessage == composerInitialMessage) &&
            (identical(
                  other.pendingEditAssistantCopy,
                  pendingEditAssistantCopy,
                ) ||
                other.pendingEditAssistantCopy == pendingEditAssistantCopy) &&
            (identical(other.isTranscribing, isTranscribing) ||
                other.isTranscribing == isTranscribing) &&
            (identical(other.effectNonce, effectNonce) ||
                other.effectNonce == effectNonce) &&
            (identical(other.lastEffect, lastEffect) ||
                other.lastEffect == lastEffect));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_visibleMessages),
    const DeepCollectionEquality().hash(_availableTools),
    isAwaitingAvailableToolsUpdate,
    const DeepCollectionEquality().hash(_usedTools),
    const DeepCollectionEquality().hash(_activeToolExecutionIds),
    const DeepCollectionEquality().hash(_activeToolExecutions),
    isSending,
    isStreamingAssistant,
    composerInitialMessage,
    pendingEditAssistantCopy,
    isTranscribing,
    effectNonce,
    lastEffect,
  );

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState({
    required final List<ChatMessage> visibleMessages,
    final List<AvailableToolInfo> availableTools,
    final bool isAwaitingAvailableToolsUpdate,
    final Set<String> usedTools,
    final List<String> activeToolExecutionIds,
    final List<ActiveToolExecutionSummary> activeToolExecutions,
    final bool isSending,
    final bool isStreamingAssistant,
    final ChatMessage? composerInitialMessage,
    final ChatMessage? pendingEditAssistantCopy,
    final bool isTranscribing,
    final int effectNonce,
    final ChatUiEffect? lastEffect,
  }) = _$ChatStateImpl;

  @override
  List<ChatMessage> get visibleMessages;
  @override
  List<AvailableToolInfo> get availableTools;
  @override
  bool get isAwaitingAvailableToolsUpdate;
  @override
  Set<String> get usedTools;
  @override
  List<String> get activeToolExecutionIds;
  @override
  List<ActiveToolExecutionSummary> get activeToolExecutions;
  @override
  bool get isSending;
  @override
  bool get isStreamingAssistant;
  @override
  ChatMessage? get composerInitialMessage;
  @override
  ChatMessage? get pendingEditAssistantCopy;
  @override
  bool get isTranscribing;

  /// Monotonic nonce so [BlocListener] can observe each effect once.
  @override
  int get effectNonce;
  @override
  ChatUiEffect? get lastEffect;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
