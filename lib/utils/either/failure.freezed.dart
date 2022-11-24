// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _TimedOut timedOut() {
    return const _TimedOut();
  }

  _NetworkError networkError() {
    return const _NetworkError();
  }

  _ServerError serverError() {
    return const _ServerError();
  }

  _Unexpected unexpected({required String errorMsg}) {
    return _Unexpected(
      errorMsg: errorMsg,
    );
  }

  _UserNotExist userNotExist() {
    return const _UserNotExist();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
    required TResult Function() userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserNotExist value) userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$TimedOutCopyWith<$Res> {
  factory _$TimedOutCopyWith(_TimedOut value, $Res Function(_TimedOut) then) =
      __$TimedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$TimedOutCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$TimedOutCopyWith<$Res> {
  __$TimedOutCopyWithImpl(_TimedOut _value, $Res Function(_TimedOut) _then)
      : super(_value, (v) => _then(v as _TimedOut));

  @override
  _TimedOut get _value => super._value as _TimedOut;
}

/// @nodoc

class _$_TimedOut implements _TimedOut {
  const _$_TimedOut();

  @override
  String toString() {
    return 'Failure.timedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TimedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
    required TResult Function() userNotExist,
  }) {
    return timedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
  }) {
    return timedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) {
    if (timedOut != null) {
      return timedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserNotExist value) userNotExist,
  }) {
    return timedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
  }) {
    return timedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) {
    if (timedOut != null) {
      return timedOut(this);
    }
    return orElse();
  }
}

abstract class _TimedOut implements Failure {
  const factory _TimedOut() = _$_TimedOut;
}

/// @nodoc
abstract class _$NetworkErrorCopyWith<$Res> {
  factory _$NetworkErrorCopyWith(
          _NetworkError value, $Res Function(_NetworkError) then) =
      __$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$NetworkErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NetworkErrorCopyWith<$Res> {
  __$NetworkErrorCopyWithImpl(
      _NetworkError _value, $Res Function(_NetworkError) _then)
      : super(_value, (v) => _then(v as _NetworkError));

  @override
  _NetworkError get _value => super._value as _NetworkError;
}

/// @nodoc

class _$_NetworkError implements _NetworkError {
  const _$_NetworkError();

  @override
  String toString() {
    return 'Failure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
    required TResult Function() userNotExist,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserNotExist value) userNotExist,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements Failure {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'Failure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
    required TResult Function() userNotExist,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserNotExist value) userNotExist,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements Failure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;

  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_Unexpected(
      errorMsg: errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'Failure.unexpected(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unexpected &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
    required TResult Function() userNotExist,
  }) {
    return unexpected(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
  }) {
    return unexpected?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserNotExist value) userNotExist,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements Failure {
  const factory _Unexpected({required String errorMsg}) = _$_Unexpected;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserNotExistCopyWith<$Res> {
  factory _$UserNotExistCopyWith(
          _UserNotExist value, $Res Function(_UserNotExist) then) =
      __$UserNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserNotExistCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UserNotExistCopyWith<$Res> {
  __$UserNotExistCopyWithImpl(
      _UserNotExist _value, $Res Function(_UserNotExist) _then)
      : super(_value, (v) => _then(v as _UserNotExist));

  @override
  _UserNotExist get _value => super._value as _UserNotExist;
}

/// @nodoc

class _$_UserNotExist implements _UserNotExist {
  const _$_UserNotExist();

  @override
  String toString() {
    return 'Failure.userNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UserNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
    required TResult Function() userNotExist,
  }) {
    return userNotExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
  }) {
    return userNotExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) {
    if (userNotExist != null) {
      return userNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UserNotExist value) userNotExist,
  }) {
    return userNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
  }) {
    return userNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) {
    if (userNotExist != null) {
      return userNotExist(this);
    }
    return orElse();
  }
}

abstract class _UserNotExist implements Failure {
  const factory _UserNotExist() = _$_UserNotExist;
}
