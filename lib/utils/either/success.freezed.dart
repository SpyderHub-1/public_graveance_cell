// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SuccessTearOff {
  const _$SuccessTearOff();

  _Successful successful() {
    return const _Successful();
  }

  _SuccessfulWithMessage successfulWithMessage(
      {required String successMessage}) {
    return _SuccessfulWithMessage(
      successMessage: successMessage,
    );
  }
}

/// @nodoc
const $Success = _$SuccessTearOff();

/// @nodoc
mixin _$Success {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() successful,
    required TResult Function(String successMessage) successfulWithMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? successful,
    TResult Function(String successMessage)? successfulWithMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? successful,
    TResult Function(String successMessage)? successfulWithMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Successful value) successful,
    required TResult Function(_SuccessfulWithMessage value)
        successfulWithMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Successful value)? successful,
    TResult Function(_SuccessfulWithMessage value)? successfulWithMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Successful value)? successful,
    TResult Function(_SuccessfulWithMessage value)? successfulWithMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._value, this._then);

  final Success _value;
  // ignore: unused_field
  final $Res Function(Success) _then;
}

/// @nodoc
abstract class _$SuccessfulCopyWith<$Res> {
  factory _$SuccessfulCopyWith(
          _Successful value, $Res Function(_Successful) then) =
      __$SuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessfulCopyWithImpl<$Res> extends _$SuccessCopyWithImpl<$Res>
    implements _$SuccessfulCopyWith<$Res> {
  __$SuccessfulCopyWithImpl(
      _Successful _value, $Res Function(_Successful) _then)
      : super(_value, (v) => _then(v as _Successful));

  @override
  _Successful get _value => super._value as _Successful;
}

/// @nodoc

class _$_Successful implements _Successful {
  const _$_Successful();

  @override
  String toString() {
    return 'Success.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Successful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() successful,
    required TResult Function(String successMessage) successfulWithMessage,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? successful,
    TResult Function(String successMessage)? successfulWithMessage,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? successful,
    TResult Function(String successMessage)? successfulWithMessage,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Successful value) successful,
    required TResult Function(_SuccessfulWithMessage value)
        successfulWithMessage,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Successful value)? successful,
    TResult Function(_SuccessfulWithMessage value)? successfulWithMessage,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Successful value)? successful,
    TResult Function(_SuccessfulWithMessage value)? successfulWithMessage,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _Successful implements Success {
  const factory _Successful() = _$_Successful;
}

/// @nodoc
abstract class _$SuccessfulWithMessageCopyWith<$Res> {
  factory _$SuccessfulWithMessageCopyWith(_SuccessfulWithMessage value,
          $Res Function(_SuccessfulWithMessage) then) =
      __$SuccessfulWithMessageCopyWithImpl<$Res>;
  $Res call({String successMessage});
}

/// @nodoc
class __$SuccessfulWithMessageCopyWithImpl<$Res>
    extends _$SuccessCopyWithImpl<$Res>
    implements _$SuccessfulWithMessageCopyWith<$Res> {
  __$SuccessfulWithMessageCopyWithImpl(_SuccessfulWithMessage _value,
      $Res Function(_SuccessfulWithMessage) _then)
      : super(_value, (v) => _then(v as _SuccessfulWithMessage));

  @override
  _SuccessfulWithMessage get _value => super._value as _SuccessfulWithMessage;

  @override
  $Res call({
    Object? successMessage = freezed,
  }) {
    return _then(_SuccessfulWithMessage(
      successMessage: successMessage == freezed
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessfulWithMessage implements _SuccessfulWithMessage {
  const _$_SuccessfulWithMessage({required this.successMessage});

  @override
  final String successMessage;

  @override
  String toString() {
    return 'Success.successfulWithMessage(successMessage: $successMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessfulWithMessage &&
            const DeepCollectionEquality()
                .equals(other.successMessage, successMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(successMessage));

  @JsonKey(ignore: true)
  @override
  _$SuccessfulWithMessageCopyWith<_SuccessfulWithMessage> get copyWith =>
      __$SuccessfulWithMessageCopyWithImpl<_SuccessfulWithMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() successful,
    required TResult Function(String successMessage) successfulWithMessage,
  }) {
    return successfulWithMessage(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? successful,
    TResult Function(String successMessage)? successfulWithMessage,
  }) {
    return successfulWithMessage?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? successful,
    TResult Function(String successMessage)? successfulWithMessage,
    required TResult orElse(),
  }) {
    if (successfulWithMessage != null) {
      return successfulWithMessage(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Successful value) successful,
    required TResult Function(_SuccessfulWithMessage value)
        successfulWithMessage,
  }) {
    return successfulWithMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Successful value)? successful,
    TResult Function(_SuccessfulWithMessage value)? successfulWithMessage,
  }) {
    return successfulWithMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Successful value)? successful,
    TResult Function(_SuccessfulWithMessage value)? successfulWithMessage,
    required TResult orElse(),
  }) {
    if (successfulWithMessage != null) {
      return successfulWithMessage(this);
    }
    return orElse();
  }
}

abstract class _SuccessfulWithMessage implements Success {
  const factory _SuccessfulWithMessage({required String successMessage}) =
      _$_SuccessfulWithMessage;

  String get successMessage;
  @JsonKey(ignore: true)
  _$SuccessfulWithMessageCopyWith<_SuccessfulWithMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
