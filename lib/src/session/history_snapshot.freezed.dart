// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HistorySnapshot {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  Map<int, Map<String, dynamic>> get metadataByIndex =>
      throw _privateConstructorUsedError;
  List<AvailableToolInfo> get availableTools =>
      throw _privateConstructorUsedError;
  bool get isAwaitingAvailableToolsUpdate => throw _privateConstructorUsedError;
  Set<String> get usedTools => throw _privateConstructorUsedError;
  List<String> get activeToolExecutionIds => throw _privateConstructorUsedError;
  List<ActiveToolExecutionSummary> get activeToolExecutions =>
      throw _privateConstructorUsedError;

  /// Create a copy of HistorySnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistorySnapshotCopyWith<HistorySnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistorySnapshotCopyWith<$Res> {
  factory $HistorySnapshotCopyWith(
    HistorySnapshot value,
    $Res Function(HistorySnapshot) then,
  ) = _$HistorySnapshotCopyWithImpl<$Res, HistorySnapshot>;
  @useResult
  $Res call({
    List<ChatMessage> messages,
    Map<int, Map<String, dynamic>> metadataByIndex,
    List<AvailableToolInfo> availableTools,
    bool isAwaitingAvailableToolsUpdate,
    Set<String> usedTools,
    List<String> activeToolExecutionIds,
    List<ActiveToolExecutionSummary> activeToolExecutions,
  });
}

/// @nodoc
class _$HistorySnapshotCopyWithImpl<$Res, $Val extends HistorySnapshot>
    implements $HistorySnapshotCopyWith<$Res> {
  _$HistorySnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistorySnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? metadataByIndex = null,
    Object? availableTools = null,
    Object? isAwaitingAvailableToolsUpdate = null,
    Object? usedTools = null,
    Object? activeToolExecutionIds = null,
    Object? activeToolExecutions = null,
  }) {
    return _then(
      _value.copyWith(
            messages:
                null == messages
                    ? _value.messages
                    : messages // ignore: cast_nullable_to_non_nullable
                        as List<ChatMessage>,
            metadataByIndex:
                null == metadataByIndex
                    ? _value.metadataByIndex
                    : metadataByIndex // ignore: cast_nullable_to_non_nullable
                        as Map<int, Map<String, dynamic>>,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HistorySnapshotImplCopyWith<$Res>
    implements $HistorySnapshotCopyWith<$Res> {
  factory _$$HistorySnapshotImplCopyWith(
    _$HistorySnapshotImpl value,
    $Res Function(_$HistorySnapshotImpl) then,
  ) = __$$HistorySnapshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ChatMessage> messages,
    Map<int, Map<String, dynamic>> metadataByIndex,
    List<AvailableToolInfo> availableTools,
    bool isAwaitingAvailableToolsUpdate,
    Set<String> usedTools,
    List<String> activeToolExecutionIds,
    List<ActiveToolExecutionSummary> activeToolExecutions,
  });
}

/// @nodoc
class __$$HistorySnapshotImplCopyWithImpl<$Res>
    extends _$HistorySnapshotCopyWithImpl<$Res, _$HistorySnapshotImpl>
    implements _$$HistorySnapshotImplCopyWith<$Res> {
  __$$HistorySnapshotImplCopyWithImpl(
    _$HistorySnapshotImpl _value,
    $Res Function(_$HistorySnapshotImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HistorySnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? metadataByIndex = null,
    Object? availableTools = null,
    Object? isAwaitingAvailableToolsUpdate = null,
    Object? usedTools = null,
    Object? activeToolExecutionIds = null,
    Object? activeToolExecutions = null,
  }) {
    return _then(
      _$HistorySnapshotImpl(
        messages:
            null == messages
                ? _value._messages
                : messages // ignore: cast_nullable_to_non_nullable
                    as List<ChatMessage>,
        metadataByIndex:
            null == metadataByIndex
                ? _value._metadataByIndex
                : metadataByIndex // ignore: cast_nullable_to_non_nullable
                    as Map<int, Map<String, dynamic>>,
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
      ),
    );
  }
}

/// @nodoc

class _$HistorySnapshotImpl implements _HistorySnapshot {
  const _$HistorySnapshotImpl({
    required final List<ChatMessage> messages,
    final Map<int, Map<String, dynamic>> metadataByIndex = const {},
    final List<AvailableToolInfo> availableTools = const [],
    this.isAwaitingAvailableToolsUpdate = false,
    final Set<String> usedTools = const {},
    final List<String> activeToolExecutionIds = const [],
    final List<ActiveToolExecutionSummary> activeToolExecutions = const [],
  }) : _messages = messages,
       _metadataByIndex = metadataByIndex,
       _availableTools = availableTools,
       _usedTools = usedTools,
       _activeToolExecutionIds = activeToolExecutionIds,
       _activeToolExecutions = activeToolExecutions;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final Map<int, Map<String, dynamic>> _metadataByIndex;
  @override
  @JsonKey()
  Map<int, Map<String, dynamic>> get metadataByIndex {
    if (_metadataByIndex is EqualUnmodifiableMapView) return _metadataByIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadataByIndex);
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
  String toString() {
    return 'HistorySnapshot(messages: $messages, metadataByIndex: $metadataByIndex, availableTools: $availableTools, isAwaitingAvailableToolsUpdate: $isAwaitingAvailableToolsUpdate, usedTools: $usedTools, activeToolExecutionIds: $activeToolExecutionIds, activeToolExecutions: $activeToolExecutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistorySnapshotImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(
              other._metadataByIndex,
              _metadataByIndex,
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
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messages),
    const DeepCollectionEquality().hash(_metadataByIndex),
    const DeepCollectionEquality().hash(_availableTools),
    isAwaitingAvailableToolsUpdate,
    const DeepCollectionEquality().hash(_usedTools),
    const DeepCollectionEquality().hash(_activeToolExecutionIds),
    const DeepCollectionEquality().hash(_activeToolExecutions),
  );

  /// Create a copy of HistorySnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistorySnapshotImplCopyWith<_$HistorySnapshotImpl> get copyWith =>
      __$$HistorySnapshotImplCopyWithImpl<_$HistorySnapshotImpl>(
        this,
        _$identity,
      );
}

abstract class _HistorySnapshot implements HistorySnapshot {
  const factory _HistorySnapshot({
    required final List<ChatMessage> messages,
    final Map<int, Map<String, dynamic>> metadataByIndex,
    final List<AvailableToolInfo> availableTools,
    final bool isAwaitingAvailableToolsUpdate,
    final Set<String> usedTools,
    final List<String> activeToolExecutionIds,
    final List<ActiveToolExecutionSummary> activeToolExecutions,
  }) = _$HistorySnapshotImpl;

  @override
  List<ChatMessage> get messages;
  @override
  Map<int, Map<String, dynamic>> get metadataByIndex;
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

  /// Create a copy of HistorySnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistorySnapshotImplCopyWith<_$HistorySnapshotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
