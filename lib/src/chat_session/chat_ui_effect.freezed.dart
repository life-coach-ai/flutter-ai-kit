// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_ui_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatUiEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelNotice,
    required TResult Function(LlmException error) showLlmException,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelNotice,
    TResult? Function(LlmException error)? showLlmException,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelNotice,
    TResult Function(LlmException error)? showLlmException,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelNotice value) cancelNotice,
    required TResult Function(_ShowLlmException value) showLlmException,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelNotice value)? cancelNotice,
    TResult? Function(_ShowLlmException value)? showLlmException,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelNotice value)? cancelNotice,
    TResult Function(_ShowLlmException value)? showLlmException,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUiEffectCopyWith<$Res> {
  factory $ChatUiEffectCopyWith(
    ChatUiEffect value,
    $Res Function(ChatUiEffect) then,
  ) = _$ChatUiEffectCopyWithImpl<$Res, ChatUiEffect>;
}

/// @nodoc
class _$ChatUiEffectCopyWithImpl<$Res, $Val extends ChatUiEffect>
    implements $ChatUiEffectCopyWith<$Res> {
  _$ChatUiEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatUiEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CancelNoticeImplCopyWith<$Res> {
  factory _$$CancelNoticeImplCopyWith(
    _$CancelNoticeImpl value,
    $Res Function(_$CancelNoticeImpl) then,
  ) = __$$CancelNoticeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelNoticeImplCopyWithImpl<$Res>
    extends _$ChatUiEffectCopyWithImpl<$Res, _$CancelNoticeImpl>
    implements _$$CancelNoticeImplCopyWith<$Res> {
  __$$CancelNoticeImplCopyWithImpl(
    _$CancelNoticeImpl _value,
    $Res Function(_$CancelNoticeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatUiEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelNoticeImpl implements _CancelNotice {
  const _$CancelNoticeImpl();

  @override
  String toString() {
    return 'ChatUiEffect.cancelNotice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelNoticeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelNotice,
    required TResult Function(LlmException error) showLlmException,
  }) {
    return cancelNotice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelNotice,
    TResult? Function(LlmException error)? showLlmException,
  }) {
    return cancelNotice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelNotice,
    TResult Function(LlmException error)? showLlmException,
    required TResult orElse(),
  }) {
    if (cancelNotice != null) {
      return cancelNotice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelNotice value) cancelNotice,
    required TResult Function(_ShowLlmException value) showLlmException,
  }) {
    return cancelNotice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelNotice value)? cancelNotice,
    TResult? Function(_ShowLlmException value)? showLlmException,
  }) {
    return cancelNotice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelNotice value)? cancelNotice,
    TResult Function(_ShowLlmException value)? showLlmException,
    required TResult orElse(),
  }) {
    if (cancelNotice != null) {
      return cancelNotice(this);
    }
    return orElse();
  }
}

abstract class _CancelNotice implements ChatUiEffect {
  const factory _CancelNotice() = _$CancelNoticeImpl;
}

/// @nodoc
abstract class _$$ShowLlmExceptionImplCopyWith<$Res> {
  factory _$$ShowLlmExceptionImplCopyWith(
    _$ShowLlmExceptionImpl value,
    $Res Function(_$ShowLlmExceptionImpl) then,
  ) = __$$ShowLlmExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LlmException error});
}

/// @nodoc
class __$$ShowLlmExceptionImplCopyWithImpl<$Res>
    extends _$ChatUiEffectCopyWithImpl<$Res, _$ShowLlmExceptionImpl>
    implements _$$ShowLlmExceptionImplCopyWith<$Res> {
  __$$ShowLlmExceptionImplCopyWithImpl(
    _$ShowLlmExceptionImpl _value,
    $Res Function(_$ShowLlmExceptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatUiEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$ShowLlmExceptionImpl(
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as LlmException,
      ),
    );
  }
}

/// @nodoc

class _$ShowLlmExceptionImpl implements _ShowLlmException {
  const _$ShowLlmExceptionImpl({required this.error});

  @override
  final LlmException error;

  @override
  String toString() {
    return 'ChatUiEffect.showLlmException(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowLlmExceptionImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatUiEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowLlmExceptionImplCopyWith<_$ShowLlmExceptionImpl> get copyWith =>
      __$$ShowLlmExceptionImplCopyWithImpl<_$ShowLlmExceptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelNotice,
    required TResult Function(LlmException error) showLlmException,
  }) {
    return showLlmException(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelNotice,
    TResult? Function(LlmException error)? showLlmException,
  }) {
    return showLlmException?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelNotice,
    TResult Function(LlmException error)? showLlmException,
    required TResult orElse(),
  }) {
    if (showLlmException != null) {
      return showLlmException(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelNotice value) cancelNotice,
    required TResult Function(_ShowLlmException value) showLlmException,
  }) {
    return showLlmException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelNotice value)? cancelNotice,
    TResult? Function(_ShowLlmException value)? showLlmException,
  }) {
    return showLlmException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelNotice value)? cancelNotice,
    TResult Function(_ShowLlmException value)? showLlmException,
    required TResult orElse(),
  }) {
    if (showLlmException != null) {
      return showLlmException(this);
    }
    return orElse();
  }
}

abstract class _ShowLlmException implements ChatUiEffect {
  const factory _ShowLlmException({required final LlmException error}) =
      _$ShowLlmExceptionImpl;

  LlmException get error;

  /// Create a copy of ChatUiEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowLlmExceptionImplCopyWith<_$ShowLlmExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
