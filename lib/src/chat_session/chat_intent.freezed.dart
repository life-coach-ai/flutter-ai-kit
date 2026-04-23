// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )
    sendMessage,
    required TResult Function() cancelStream,
    required TResult Function() startEditLastTurn,
    required TResult Function() cancelEdit,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(
      XFile file,
      Iterable<Attachment> currentAttachments,
    )
    translateSpeechToText,
    required TResult Function() cancelSpeechToText,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult? Function()? cancelStream,
    TResult? Function()? startEditLastTurn,
    TResult? Function()? cancelEdit,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult? Function()? cancelSpeechToText,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult Function()? cancelStream,
    TResult Function()? startEditLastTurn,
    TResult Function()? cancelEdit,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult Function()? cancelSpeechToText,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_CancelStream value) cancelStream,
    required TResult Function(_StartEditLastTurn value) startEditLastTurn,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_SelectSuggestion value) selectSuggestion,
    required TResult Function(_TranslateSpeechToText value)
    translateSpeechToText,
    required TResult Function(_CancelSpeechToText value) cancelSpeechToText,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_CancelStream value)? cancelStream,
    TResult? Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult? Function(_CancelEdit value)? cancelEdit,
    TResult? Function(_SelectSuggestion value)? selectSuggestion,
    TResult? Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult? Function(_CancelSpeechToText value)? cancelSpeechToText,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_CancelStream value)? cancelStream,
    TResult Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_SelectSuggestion value)? selectSuggestion,
    TResult Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult Function(_CancelSpeechToText value)? cancelSpeechToText,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatIntentCopyWith<$Res> {
  factory $ChatIntentCopyWith(
    ChatIntent value,
    $Res Function(ChatIntent) then,
  ) = _$ChatIntentCopyWithImpl<$Res, ChatIntent>;
}

/// @nodoc
class _$ChatIntentCopyWithImpl<$Res, $Val extends ChatIntent>
    implements $ChatIntentCopyWith<$Res> {
  _$ChatIntentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
    _$SendMessageImpl value,
    $Res Function(_$SendMessageImpl) then,
  ) = __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String text,
    Iterable<Attachment> attachments,
    String? editedUserMessageId,
  });
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatIntentCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
    _$SendMessageImpl _value,
    $Res Function(_$SendMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? attachments = null,
    Object? editedUserMessageId = freezed,
  }) {
    return _then(
      _$SendMessageImpl(
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
        attachments:
            null == attachments
                ? _value.attachments
                : attachments // ignore: cast_nullable_to_non_nullable
                    as Iterable<Attachment>,
        editedUserMessageId:
            freezed == editedUserMessageId
                ? _value.editedUserMessageId
                : editedUserMessageId // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl({
    required this.text,
    this.attachments = const <Attachment>[],
    this.editedUserMessageId,
  });

  @override
  final String text;
  @override
  @JsonKey()
  final Iterable<Attachment> attachments;
  @override
  final String? editedUserMessageId;

  @override
  String toString() {
    return 'ChatIntent.sendMessage(text: $text, attachments: $attachments, editedUserMessageId: $editedUserMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(
              other.attachments,
              attachments,
            ) &&
            (identical(other.editedUserMessageId, editedUserMessageId) ||
                other.editedUserMessageId == editedUserMessageId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    text,
    const DeepCollectionEquality().hash(attachments),
    editedUserMessageId,
  );

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )
    sendMessage,
    required TResult Function() cancelStream,
    required TResult Function() startEditLastTurn,
    required TResult Function() cancelEdit,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(
      XFile file,
      Iterable<Attachment> currentAttachments,
    )
    translateSpeechToText,
    required TResult Function() cancelSpeechToText,
  }) {
    return sendMessage(text, attachments, editedUserMessageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult? Function()? cancelStream,
    TResult? Function()? startEditLastTurn,
    TResult? Function()? cancelEdit,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult? Function()? cancelSpeechToText,
  }) {
    return sendMessage?.call(text, attachments, editedUserMessageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult Function()? cancelStream,
    TResult Function()? startEditLastTurn,
    TResult Function()? cancelEdit,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult Function()? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(text, attachments, editedUserMessageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_CancelStream value) cancelStream,
    required TResult Function(_StartEditLastTurn value) startEditLastTurn,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_SelectSuggestion value) selectSuggestion,
    required TResult Function(_TranslateSpeechToText value)
    translateSpeechToText,
    required TResult Function(_CancelSpeechToText value) cancelSpeechToText,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_CancelStream value)? cancelStream,
    TResult? Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult? Function(_CancelEdit value)? cancelEdit,
    TResult? Function(_SelectSuggestion value)? selectSuggestion,
    TResult? Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult? Function(_CancelSpeechToText value)? cancelSpeechToText,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_CancelStream value)? cancelStream,
    TResult Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_SelectSuggestion value)? selectSuggestion,
    TResult Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult Function(_CancelSpeechToText value)? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatIntent {
  const factory _SendMessage({
    required final String text,
    final Iterable<Attachment> attachments,
    final String? editedUserMessageId,
  }) = _$SendMessageImpl;

  String get text;
  Iterable<Attachment> get attachments;
  String? get editedUserMessageId;

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelStreamImplCopyWith<$Res> {
  factory _$$CancelStreamImplCopyWith(
    _$CancelStreamImpl value,
    $Res Function(_$CancelStreamImpl) then,
  ) = __$$CancelStreamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelStreamImplCopyWithImpl<$Res>
    extends _$ChatIntentCopyWithImpl<$Res, _$CancelStreamImpl>
    implements _$$CancelStreamImplCopyWith<$Res> {
  __$$CancelStreamImplCopyWithImpl(
    _$CancelStreamImpl _value,
    $Res Function(_$CancelStreamImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelStreamImpl implements _CancelStream {
  const _$CancelStreamImpl();

  @override
  String toString() {
    return 'ChatIntent.cancelStream()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelStreamImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )
    sendMessage,
    required TResult Function() cancelStream,
    required TResult Function() startEditLastTurn,
    required TResult Function() cancelEdit,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(
      XFile file,
      Iterable<Attachment> currentAttachments,
    )
    translateSpeechToText,
    required TResult Function() cancelSpeechToText,
  }) {
    return cancelStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult? Function()? cancelStream,
    TResult? Function()? startEditLastTurn,
    TResult? Function()? cancelEdit,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult? Function()? cancelSpeechToText,
  }) {
    return cancelStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult Function()? cancelStream,
    TResult Function()? startEditLastTurn,
    TResult Function()? cancelEdit,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult Function()? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (cancelStream != null) {
      return cancelStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_CancelStream value) cancelStream,
    required TResult Function(_StartEditLastTurn value) startEditLastTurn,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_SelectSuggestion value) selectSuggestion,
    required TResult Function(_TranslateSpeechToText value)
    translateSpeechToText,
    required TResult Function(_CancelSpeechToText value) cancelSpeechToText,
  }) {
    return cancelStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_CancelStream value)? cancelStream,
    TResult? Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult? Function(_CancelEdit value)? cancelEdit,
    TResult? Function(_SelectSuggestion value)? selectSuggestion,
    TResult? Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult? Function(_CancelSpeechToText value)? cancelSpeechToText,
  }) {
    return cancelStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_CancelStream value)? cancelStream,
    TResult Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_SelectSuggestion value)? selectSuggestion,
    TResult Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult Function(_CancelSpeechToText value)? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (cancelStream != null) {
      return cancelStream(this);
    }
    return orElse();
  }
}

abstract class _CancelStream implements ChatIntent {
  const factory _CancelStream() = _$CancelStreamImpl;
}

/// @nodoc
abstract class _$$StartEditLastTurnImplCopyWith<$Res> {
  factory _$$StartEditLastTurnImplCopyWith(
    _$StartEditLastTurnImpl value,
    $Res Function(_$StartEditLastTurnImpl) then,
  ) = __$$StartEditLastTurnImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartEditLastTurnImplCopyWithImpl<$Res>
    extends _$ChatIntentCopyWithImpl<$Res, _$StartEditLastTurnImpl>
    implements _$$StartEditLastTurnImplCopyWith<$Res> {
  __$$StartEditLastTurnImplCopyWithImpl(
    _$StartEditLastTurnImpl _value,
    $Res Function(_$StartEditLastTurnImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartEditLastTurnImpl implements _StartEditLastTurn {
  const _$StartEditLastTurnImpl();

  @override
  String toString() {
    return 'ChatIntent.startEditLastTurn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartEditLastTurnImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )
    sendMessage,
    required TResult Function() cancelStream,
    required TResult Function() startEditLastTurn,
    required TResult Function() cancelEdit,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(
      XFile file,
      Iterable<Attachment> currentAttachments,
    )
    translateSpeechToText,
    required TResult Function() cancelSpeechToText,
  }) {
    return startEditLastTurn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult? Function()? cancelStream,
    TResult? Function()? startEditLastTurn,
    TResult? Function()? cancelEdit,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult? Function()? cancelSpeechToText,
  }) {
    return startEditLastTurn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult Function()? cancelStream,
    TResult Function()? startEditLastTurn,
    TResult Function()? cancelEdit,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult Function()? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (startEditLastTurn != null) {
      return startEditLastTurn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_CancelStream value) cancelStream,
    required TResult Function(_StartEditLastTurn value) startEditLastTurn,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_SelectSuggestion value) selectSuggestion,
    required TResult Function(_TranslateSpeechToText value)
    translateSpeechToText,
    required TResult Function(_CancelSpeechToText value) cancelSpeechToText,
  }) {
    return startEditLastTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_CancelStream value)? cancelStream,
    TResult? Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult? Function(_CancelEdit value)? cancelEdit,
    TResult? Function(_SelectSuggestion value)? selectSuggestion,
    TResult? Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult? Function(_CancelSpeechToText value)? cancelSpeechToText,
  }) {
    return startEditLastTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_CancelStream value)? cancelStream,
    TResult Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_SelectSuggestion value)? selectSuggestion,
    TResult Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult Function(_CancelSpeechToText value)? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (startEditLastTurn != null) {
      return startEditLastTurn(this);
    }
    return orElse();
  }
}

abstract class _StartEditLastTurn implements ChatIntent {
  const factory _StartEditLastTurn() = _$StartEditLastTurnImpl;
}

/// @nodoc
abstract class _$$CancelEditImplCopyWith<$Res> {
  factory _$$CancelEditImplCopyWith(
    _$CancelEditImpl value,
    $Res Function(_$CancelEditImpl) then,
  ) = __$$CancelEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelEditImplCopyWithImpl<$Res>
    extends _$ChatIntentCopyWithImpl<$Res, _$CancelEditImpl>
    implements _$$CancelEditImplCopyWith<$Res> {
  __$$CancelEditImplCopyWithImpl(
    _$CancelEditImpl _value,
    $Res Function(_$CancelEditImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelEditImpl implements _CancelEdit {
  const _$CancelEditImpl();

  @override
  String toString() {
    return 'ChatIntent.cancelEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )
    sendMessage,
    required TResult Function() cancelStream,
    required TResult Function() startEditLastTurn,
    required TResult Function() cancelEdit,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(
      XFile file,
      Iterable<Attachment> currentAttachments,
    )
    translateSpeechToText,
    required TResult Function() cancelSpeechToText,
  }) {
    return cancelEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult? Function()? cancelStream,
    TResult? Function()? startEditLastTurn,
    TResult? Function()? cancelEdit,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult? Function()? cancelSpeechToText,
  }) {
    return cancelEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult Function()? cancelStream,
    TResult Function()? startEditLastTurn,
    TResult Function()? cancelEdit,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult Function()? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (cancelEdit != null) {
      return cancelEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_CancelStream value) cancelStream,
    required TResult Function(_StartEditLastTurn value) startEditLastTurn,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_SelectSuggestion value) selectSuggestion,
    required TResult Function(_TranslateSpeechToText value)
    translateSpeechToText,
    required TResult Function(_CancelSpeechToText value) cancelSpeechToText,
  }) {
    return cancelEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_CancelStream value)? cancelStream,
    TResult? Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult? Function(_CancelEdit value)? cancelEdit,
    TResult? Function(_SelectSuggestion value)? selectSuggestion,
    TResult? Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult? Function(_CancelSpeechToText value)? cancelSpeechToText,
  }) {
    return cancelEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_CancelStream value)? cancelStream,
    TResult Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_SelectSuggestion value)? selectSuggestion,
    TResult Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult Function(_CancelSpeechToText value)? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (cancelEdit != null) {
      return cancelEdit(this);
    }
    return orElse();
  }
}

abstract class _CancelEdit implements ChatIntent {
  const factory _CancelEdit() = _$CancelEditImpl;
}

/// @nodoc
abstract class _$$SelectSuggestionImplCopyWith<$Res> {
  factory _$$SelectSuggestionImplCopyWith(
    _$SelectSuggestionImpl value,
    $Res Function(_$SelectSuggestionImpl) then,
  ) = __$$SelectSuggestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String suggestion});
}

/// @nodoc
class __$$SelectSuggestionImplCopyWithImpl<$Res>
    extends _$ChatIntentCopyWithImpl<$Res, _$SelectSuggestionImpl>
    implements _$$SelectSuggestionImplCopyWith<$Res> {
  __$$SelectSuggestionImplCopyWithImpl(
    _$SelectSuggestionImpl _value,
    $Res Function(_$SelectSuggestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? suggestion = null}) {
    return _then(
      _$SelectSuggestionImpl(
        null == suggestion
            ? _value.suggestion
            : suggestion // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectSuggestionImpl implements _SelectSuggestion {
  const _$SelectSuggestionImpl(this.suggestion);

  @override
  final String suggestion;

  @override
  String toString() {
    return 'ChatIntent.selectSuggestion(suggestion: $suggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSuggestionImpl &&
            (identical(other.suggestion, suggestion) ||
                other.suggestion == suggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, suggestion);

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSuggestionImplCopyWith<_$SelectSuggestionImpl> get copyWith =>
      __$$SelectSuggestionImplCopyWithImpl<_$SelectSuggestionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )
    sendMessage,
    required TResult Function() cancelStream,
    required TResult Function() startEditLastTurn,
    required TResult Function() cancelEdit,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(
      XFile file,
      Iterable<Attachment> currentAttachments,
    )
    translateSpeechToText,
    required TResult Function() cancelSpeechToText,
  }) {
    return selectSuggestion(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult? Function()? cancelStream,
    TResult? Function()? startEditLastTurn,
    TResult? Function()? cancelEdit,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult? Function()? cancelSpeechToText,
  }) {
    return selectSuggestion?.call(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult Function()? cancelStream,
    TResult Function()? startEditLastTurn,
    TResult Function()? cancelEdit,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult Function()? cancelSpeechToText,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_CancelStream value) cancelStream,
    required TResult Function(_StartEditLastTurn value) startEditLastTurn,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_SelectSuggestion value) selectSuggestion,
    required TResult Function(_TranslateSpeechToText value)
    translateSpeechToText,
    required TResult Function(_CancelSpeechToText value) cancelSpeechToText,
  }) {
    return selectSuggestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_CancelStream value)? cancelStream,
    TResult? Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult? Function(_CancelEdit value)? cancelEdit,
    TResult? Function(_SelectSuggestion value)? selectSuggestion,
    TResult? Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult? Function(_CancelSpeechToText value)? cancelSpeechToText,
  }) {
    return selectSuggestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_CancelStream value)? cancelStream,
    TResult Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_SelectSuggestion value)? selectSuggestion,
    TResult Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult Function(_CancelSpeechToText value)? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (selectSuggestion != null) {
      return selectSuggestion(this);
    }
    return orElse();
  }
}

abstract class _SelectSuggestion implements ChatIntent {
  const factory _SelectSuggestion(final String suggestion) =
      _$SelectSuggestionImpl;

  String get suggestion;

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectSuggestionImplCopyWith<_$SelectSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TranslateSpeechToTextImplCopyWith<$Res> {
  factory _$$TranslateSpeechToTextImplCopyWith(
    _$TranslateSpeechToTextImpl value,
    $Res Function(_$TranslateSpeechToTextImpl) then,
  ) = __$$TranslateSpeechToTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile file, Iterable<Attachment> currentAttachments});
}

/// @nodoc
class __$$TranslateSpeechToTextImplCopyWithImpl<$Res>
    extends _$ChatIntentCopyWithImpl<$Res, _$TranslateSpeechToTextImpl>
    implements _$$TranslateSpeechToTextImplCopyWith<$Res> {
  __$$TranslateSpeechToTextImplCopyWithImpl(
    _$TranslateSpeechToTextImpl _value,
    $Res Function(_$TranslateSpeechToTextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? file = null, Object? currentAttachments = null}) {
    return _then(
      _$TranslateSpeechToTextImpl(
        file:
            null == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                    as XFile,
        currentAttachments:
            null == currentAttachments
                ? _value.currentAttachments
                : currentAttachments // ignore: cast_nullable_to_non_nullable
                    as Iterable<Attachment>,
      ),
    );
  }
}

/// @nodoc

class _$TranslateSpeechToTextImpl implements _TranslateSpeechToText {
  const _$TranslateSpeechToTextImpl({
    required this.file,
    required this.currentAttachments,
  });

  @override
  final XFile file;
  @override
  final Iterable<Attachment> currentAttachments;

  @override
  String toString() {
    return 'ChatIntent.translateSpeechToText(file: $file, currentAttachments: $currentAttachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateSpeechToTextImpl &&
            (identical(other.file, file) || other.file == file) &&
            const DeepCollectionEquality().equals(
              other.currentAttachments,
              currentAttachments,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    file,
    const DeepCollectionEquality().hash(currentAttachments),
  );

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateSpeechToTextImplCopyWith<_$TranslateSpeechToTextImpl>
  get copyWith =>
      __$$TranslateSpeechToTextImplCopyWithImpl<_$TranslateSpeechToTextImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )
    sendMessage,
    required TResult Function() cancelStream,
    required TResult Function() startEditLastTurn,
    required TResult Function() cancelEdit,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(
      XFile file,
      Iterable<Attachment> currentAttachments,
    )
    translateSpeechToText,
    required TResult Function() cancelSpeechToText,
  }) {
    return translateSpeechToText(file, currentAttachments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult? Function()? cancelStream,
    TResult? Function()? startEditLastTurn,
    TResult? Function()? cancelEdit,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult? Function()? cancelSpeechToText,
  }) {
    return translateSpeechToText?.call(file, currentAttachments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult Function()? cancelStream,
    TResult Function()? startEditLastTurn,
    TResult Function()? cancelEdit,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult Function()? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (translateSpeechToText != null) {
      return translateSpeechToText(file, currentAttachments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_CancelStream value) cancelStream,
    required TResult Function(_StartEditLastTurn value) startEditLastTurn,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_SelectSuggestion value) selectSuggestion,
    required TResult Function(_TranslateSpeechToText value)
    translateSpeechToText,
    required TResult Function(_CancelSpeechToText value) cancelSpeechToText,
  }) {
    return translateSpeechToText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_CancelStream value)? cancelStream,
    TResult? Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult? Function(_CancelEdit value)? cancelEdit,
    TResult? Function(_SelectSuggestion value)? selectSuggestion,
    TResult? Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult? Function(_CancelSpeechToText value)? cancelSpeechToText,
  }) {
    return translateSpeechToText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_CancelStream value)? cancelStream,
    TResult Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_SelectSuggestion value)? selectSuggestion,
    TResult Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult Function(_CancelSpeechToText value)? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (translateSpeechToText != null) {
      return translateSpeechToText(this);
    }
    return orElse();
  }
}

abstract class _TranslateSpeechToText implements ChatIntent {
  const factory _TranslateSpeechToText({
    required final XFile file,
    required final Iterable<Attachment> currentAttachments,
  }) = _$TranslateSpeechToTextImpl;

  XFile get file;
  Iterable<Attachment> get currentAttachments;

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslateSpeechToTextImplCopyWith<_$TranslateSpeechToTextImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelSpeechToTextImplCopyWith<$Res> {
  factory _$$CancelSpeechToTextImplCopyWith(
    _$CancelSpeechToTextImpl value,
    $Res Function(_$CancelSpeechToTextImpl) then,
  ) = __$$CancelSpeechToTextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelSpeechToTextImplCopyWithImpl<$Res>
    extends _$ChatIntentCopyWithImpl<$Res, _$CancelSpeechToTextImpl>
    implements _$$CancelSpeechToTextImplCopyWith<$Res> {
  __$$CancelSpeechToTextImplCopyWithImpl(
    _$CancelSpeechToTextImpl _value,
    $Res Function(_$CancelSpeechToTextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatIntent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelSpeechToTextImpl implements _CancelSpeechToText {
  const _$CancelSpeechToTextImpl();

  @override
  String toString() {
    return 'ChatIntent.cancelSpeechToText()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelSpeechToTextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )
    sendMessage,
    required TResult Function() cancelStream,
    required TResult Function() startEditLastTurn,
    required TResult Function() cancelEdit,
    required TResult Function(String suggestion) selectSuggestion,
    required TResult Function(
      XFile file,
      Iterable<Attachment> currentAttachments,
    )
    translateSpeechToText,
    required TResult Function() cancelSpeechToText,
  }) {
    return cancelSpeechToText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult? Function()? cancelStream,
    TResult? Function()? startEditLastTurn,
    TResult? Function()? cancelEdit,
    TResult? Function(String suggestion)? selectSuggestion,
    TResult? Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult? Function()? cancelSpeechToText,
  }) {
    return cancelSpeechToText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String text,
      Iterable<Attachment> attachments,
      String? editedUserMessageId,
    )?
    sendMessage,
    TResult Function()? cancelStream,
    TResult Function()? startEditLastTurn,
    TResult Function()? cancelEdit,
    TResult Function(String suggestion)? selectSuggestion,
    TResult Function(XFile file, Iterable<Attachment> currentAttachments)?
    translateSpeechToText,
    TResult Function()? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (cancelSpeechToText != null) {
      return cancelSpeechToText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_CancelStream value) cancelStream,
    required TResult Function(_StartEditLastTurn value) startEditLastTurn,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_SelectSuggestion value) selectSuggestion,
    required TResult Function(_TranslateSpeechToText value)
    translateSpeechToText,
    required TResult Function(_CancelSpeechToText value) cancelSpeechToText,
  }) {
    return cancelSpeechToText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_CancelStream value)? cancelStream,
    TResult? Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult? Function(_CancelEdit value)? cancelEdit,
    TResult? Function(_SelectSuggestion value)? selectSuggestion,
    TResult? Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult? Function(_CancelSpeechToText value)? cancelSpeechToText,
  }) {
    return cancelSpeechToText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_CancelStream value)? cancelStream,
    TResult Function(_StartEditLastTurn value)? startEditLastTurn,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_SelectSuggestion value)? selectSuggestion,
    TResult Function(_TranslateSpeechToText value)? translateSpeechToText,
    TResult Function(_CancelSpeechToText value)? cancelSpeechToText,
    required TResult orElse(),
  }) {
    if (cancelSpeechToText != null) {
      return cancelSpeechToText(this);
    }
    return orElse();
  }
}

abstract class _CancelSpeechToText implements ChatIntent {
  const factory _CancelSpeechToText() = _$CancelSpeechToTextImpl;
}
