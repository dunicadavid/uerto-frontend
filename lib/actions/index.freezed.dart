// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeAppStart value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeAppStart value)? $default, {
    TResult? Function(InitializeAppSuccessful value)? successful,
    TResult? Function(InitializeAppError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeAppStart value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(
          InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res, InitializeApp>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res, $Val extends InitializeApp>
    implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeAppStartCopyWith<$Res> {
  factory _$$InitializeAppStartCopyWith(_$InitializeAppStart value,
          $Res Function(_$InitializeAppStart) then) =
      __$$InitializeAppStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeAppStartCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res, _$InitializeAppStart>
    implements _$$InitializeAppStartCopyWith<$Res> {
  __$$InitializeAppStartCopyWithImpl(
      _$InitializeAppStart _value, $Res Function(_$InitializeAppStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeAppStart implements InitializeAppStart {
  const _$InitializeAppStart();

  @override
  String toString() {
    return 'InitializeApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeAppStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeAppStart value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeAppStart value)? $default, {
    TResult? Function(InitializeAppSuccessful value)? successful,
    TResult? Function(InitializeAppError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeAppStart value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeAppStart implements InitializeApp {
  const factory InitializeAppStart() = _$InitializeAppStart;
}

/// @nodoc
abstract class _$$InitializeAppSuccessfulCopyWith<$Res> {
  factory _$$InitializeAppSuccessfulCopyWith(_$InitializeAppSuccessful value,
          $Res Function(_$InitializeAppSuccessful) then) =
      __$$InitializeAppSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser? user});
}

/// @nodoc
class __$$InitializeAppSuccessfulCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res, _$InitializeAppSuccessful>
    implements _$$InitializeAppSuccessfulCopyWith<$Res> {
  __$$InitializeAppSuccessfulCopyWithImpl(_$InitializeAppSuccessful _value,
      $Res Function(_$InitializeAppSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$InitializeAppSuccessful(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc

class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeAppSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeAppSuccessfulCopyWith<_$InitializeAppSuccessful> get copyWith =>
      __$$InitializeAppSuccessfulCopyWithImpl<_$InitializeAppSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeAppStart value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeAppStart value)? $default, {
    TResult? Function(InitializeAppSuccessful value)? successful,
    TResult? Function(InitializeAppError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeAppStart value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(final AppUser? user) =
      _$InitializeAppSuccessful;

  AppUser? get user;
  @JsonKey(ignore: true)
  _$$InitializeAppSuccessfulCopyWith<_$InitializeAppSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeAppErrorCopyWith<$Res> {
  factory _$$InitializeAppErrorCopyWith(_$InitializeAppError value,
          $Res Function(_$InitializeAppError) then) =
      __$$InitializeAppErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$InitializeAppErrorCopyWithImpl<$Res>
    extends _$InitializeAppCopyWithImpl<$Res, _$InitializeAppError>
    implements _$$InitializeAppErrorCopyWith<$Res> {
  __$$InitializeAppErrorCopyWithImpl(
      _$InitializeAppError _value, $Res Function(_$InitializeAppError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$InitializeAppError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeAppError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeAppErrorCopyWith<_$InitializeAppError> get copyWith =>
      __$$InitializeAppErrorCopyWithImpl<_$InitializeAppError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeAppStart value) $default, {
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeAppStart value)? $default, {
    TResult? Function(InitializeAppSuccessful value)? successful,
    TResult? Function(InitializeAppError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeAppStart value)? $default, {
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp, ErrorAction {
  const factory InitializeAppError(
      final Object error, final StackTrace stackTrace) = _$InitializeAppError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$InitializeAppErrorCopyWith<_$InitializeAppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterPhase1 {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterPhase1Start value) $default, {
    required TResult Function(RegisterPhase1Successful value) successful,
    required TResult Function(RegisterPhase1Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegisterPhase1Start value)? $default, {
    TResult? Function(RegisterPhase1Successful value)? successful,
    TResult? Function(RegisterPhase1Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterPhase1Start value)? $default, {
    TResult Function(RegisterPhase1Successful value)? successful,
    TResult Function(RegisterPhase1Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPhase1CopyWith<$Res> {
  factory $RegisterPhase1CopyWith(
          RegisterPhase1 value, $Res Function(RegisterPhase1) then) =
      _$RegisterPhase1CopyWithImpl<$Res, RegisterPhase1>;
}

/// @nodoc
class _$RegisterPhase1CopyWithImpl<$Res, $Val extends RegisterPhase1>
    implements $RegisterPhase1CopyWith<$Res> {
  _$RegisterPhase1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterPhase1StartCopyWith<$Res> {
  factory _$$RegisterPhase1StartCopyWith(_$RegisterPhase1Start value,
          $Res Function(_$RegisterPhase1Start) then) =
      __$$RegisterPhase1StartCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, ActionResult result});
}

/// @nodoc
class __$$RegisterPhase1StartCopyWithImpl<$Res>
    extends _$RegisterPhase1CopyWithImpl<$Res, _$RegisterPhase1Start>
    implements _$$RegisterPhase1StartCopyWith<$Res> {
  __$$RegisterPhase1StartCopyWithImpl(
      _$RegisterPhase1Start _value, $Res Function(_$RegisterPhase1Start) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? result = null,
  }) {
    return _then(_$RegisterPhase1Start(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$RegisterPhase1Start implements RegisterPhase1Start {
  const _$RegisterPhase1Start(this.email, this.password, this.result);

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'RegisterPhase1(email: $email, password: $password, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPhase1Start &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPhase1StartCopyWith<_$RegisterPhase1Start> get copyWith =>
      __$$RegisterPhase1StartCopyWithImpl<_$RegisterPhase1Start>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterPhase1Start value) $default, {
    required TResult Function(RegisterPhase1Successful value) successful,
    required TResult Function(RegisterPhase1Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegisterPhase1Start value)? $default, {
    TResult? Function(RegisterPhase1Successful value)? successful,
    TResult? Function(RegisterPhase1Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterPhase1Start value)? $default, {
    TResult Function(RegisterPhase1Successful value)? successful,
    TResult Function(RegisterPhase1Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RegisterPhase1Start implements RegisterPhase1 {
  const factory RegisterPhase1Start(final String email, final String password,
      final ActionResult result) = _$RegisterPhase1Start;

  String get email;
  String get password;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$RegisterPhase1StartCopyWith<_$RegisterPhase1Start> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPhase1SuccessfulCopyWith<$Res> {
  factory _$$RegisterPhase1SuccessfulCopyWith(_$RegisterPhase1Successful value,
          $Res Function(_$RegisterPhase1Successful) then) =
      __$$RegisterPhase1SuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterPhase1SuccessfulCopyWithImpl<$Res>
    extends _$RegisterPhase1CopyWithImpl<$Res, _$RegisterPhase1Successful>
    implements _$$RegisterPhase1SuccessfulCopyWith<$Res> {
  __$$RegisterPhase1SuccessfulCopyWithImpl(_$RegisterPhase1Successful _value,
      $Res Function(_$RegisterPhase1Successful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterPhase1Successful implements RegisterPhase1Successful {
  const _$RegisterPhase1Successful();

  @override
  String toString() {
    return 'RegisterPhase1.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPhase1Successful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterPhase1Start value) $default, {
    required TResult Function(RegisterPhase1Successful value) successful,
    required TResult Function(RegisterPhase1Error value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegisterPhase1Start value)? $default, {
    TResult? Function(RegisterPhase1Successful value)? successful,
    TResult? Function(RegisterPhase1Error value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterPhase1Start value)? $default, {
    TResult Function(RegisterPhase1Successful value)? successful,
    TResult Function(RegisterPhase1Error value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RegisterPhase1Successful implements RegisterPhase1 {
  const factory RegisterPhase1Successful() = _$RegisterPhase1Successful;
}

/// @nodoc
abstract class _$$RegisterPhase1ErrorCopyWith<$Res> {
  factory _$$RegisterPhase1ErrorCopyWith(_$RegisterPhase1Error value,
          $Res Function(_$RegisterPhase1Error) then) =
      __$$RegisterPhase1ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$RegisterPhase1ErrorCopyWithImpl<$Res>
    extends _$RegisterPhase1CopyWithImpl<$Res, _$RegisterPhase1Error>
    implements _$$RegisterPhase1ErrorCopyWith<$Res> {
  __$$RegisterPhase1ErrorCopyWithImpl(
      _$RegisterPhase1Error _value, $Res Function(_$RegisterPhase1Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$RegisterPhase1Error(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$RegisterPhase1Error implements RegisterPhase1Error {
  const _$RegisterPhase1Error(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RegisterPhase1.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPhase1Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPhase1ErrorCopyWith<_$RegisterPhase1Error> get copyWith =>
      __$$RegisterPhase1ErrorCopyWithImpl<_$RegisterPhase1Error>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterPhase1Start value) $default, {
    required TResult Function(RegisterPhase1Successful value) successful,
    required TResult Function(RegisterPhase1Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegisterPhase1Start value)? $default, {
    TResult? Function(RegisterPhase1Successful value)? successful,
    TResult? Function(RegisterPhase1Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterPhase1Start value)? $default, {
    TResult Function(RegisterPhase1Successful value)? successful,
    TResult Function(RegisterPhase1Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterPhase1Error implements RegisterPhase1, ErrorAction {
  const factory RegisterPhase1Error(
      final Object error, final StackTrace stackTrace) = _$RegisterPhase1Error;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$RegisterPhase1ErrorCopyWith<_$RegisterPhase1Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterPhase2 {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)
        $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)?
        $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)?
        $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterPhase2Start value) $default, {
    required TResult Function(RegisterPhase2Successful value) successful,
    required TResult Function(RegisterPhase2Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegisterPhase2Start value)? $default, {
    TResult? Function(RegisterPhase2Successful value)? successful,
    TResult? Function(RegisterPhase2Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterPhase2Start value)? $default, {
    TResult Function(RegisterPhase2Successful value)? successful,
    TResult Function(RegisterPhase2Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPhase2CopyWith<$Res> {
  factory $RegisterPhase2CopyWith(
          RegisterPhase2 value, $Res Function(RegisterPhase2) then) =
      _$RegisterPhase2CopyWithImpl<$Res, RegisterPhase2>;
}

/// @nodoc
class _$RegisterPhase2CopyWithImpl<$Res, $Val extends RegisterPhase2>
    implements $RegisterPhase2CopyWith<$Res> {
  _$RegisterPhase2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterPhase2StartCopyWith<$Res> {
  factory _$$RegisterPhase2StartCopyWith(_$RegisterPhase2Start value,
          $Res Function(_$RegisterPhase2Start) then) =
      __$$RegisterPhase2StartCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fullname,
      String phoneNumber,
      String photoUrl,
      ActionResult result});
}

/// @nodoc
class __$$RegisterPhase2StartCopyWithImpl<$Res>
    extends _$RegisterPhase2CopyWithImpl<$Res, _$RegisterPhase2Start>
    implements _$$RegisterPhase2StartCopyWith<$Res> {
  __$$RegisterPhase2StartCopyWithImpl(
      _$RegisterPhase2Start _value, $Res Function(_$RegisterPhase2Start) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? phoneNumber = null,
    Object? photoUrl = null,
    Object? result = null,
  }) {
    return _then(_$RegisterPhase2Start(
      null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$RegisterPhase2Start implements RegisterPhase2Start {
  const _$RegisterPhase2Start(
      this.fullname, this.phoneNumber, this.photoUrl, this.result);

  @override
  final String fullname;
  @override
  final String phoneNumber;
  @override
  final String photoUrl;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'RegisterPhase2(fullname: $fullname, phoneNumber: $phoneNumber, photoUrl: $photoUrl, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPhase2Start &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fullname, phoneNumber, photoUrl, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPhase2StartCopyWith<_$RegisterPhase2Start> get copyWith =>
      __$$RegisterPhase2StartCopyWithImpl<_$RegisterPhase2Start>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)
        $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(fullname, phoneNumber, photoUrl, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)?
        $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(fullname, phoneNumber, photoUrl, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)?
        $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(fullname, phoneNumber, photoUrl, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterPhase2Start value) $default, {
    required TResult Function(RegisterPhase2Successful value) successful,
    required TResult Function(RegisterPhase2Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegisterPhase2Start value)? $default, {
    TResult? Function(RegisterPhase2Successful value)? successful,
    TResult? Function(RegisterPhase2Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterPhase2Start value)? $default, {
    TResult Function(RegisterPhase2Successful value)? successful,
    TResult Function(RegisterPhase2Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RegisterPhase2Start implements RegisterPhase2 {
  const factory RegisterPhase2Start(
      final String fullname,
      final String phoneNumber,
      final String photoUrl,
      final ActionResult result) = _$RegisterPhase2Start;

  String get fullname;
  String get phoneNumber;
  String get photoUrl;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$RegisterPhase2StartCopyWith<_$RegisterPhase2Start> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPhase2SuccessfulCopyWith<$Res> {
  factory _$$RegisterPhase2SuccessfulCopyWith(_$RegisterPhase2Successful value,
          $Res Function(_$RegisterPhase2Successful) then) =
      __$$RegisterPhase2SuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser? user});
}

/// @nodoc
class __$$RegisterPhase2SuccessfulCopyWithImpl<$Res>
    extends _$RegisterPhase2CopyWithImpl<$Res, _$RegisterPhase2Successful>
    implements _$$RegisterPhase2SuccessfulCopyWith<$Res> {
  __$$RegisterPhase2SuccessfulCopyWithImpl(_$RegisterPhase2Successful _value,
      $Res Function(_$RegisterPhase2Successful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$RegisterPhase2Successful(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc

class _$RegisterPhase2Successful implements RegisterPhase2Successful {
  const _$RegisterPhase2Successful(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'RegisterPhase2.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPhase2Successful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPhase2SuccessfulCopyWith<_$RegisterPhase2Successful>
      get copyWith =>
          __$$RegisterPhase2SuccessfulCopyWithImpl<_$RegisterPhase2Successful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)
        $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)?
        $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)?
        $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterPhase2Start value) $default, {
    required TResult Function(RegisterPhase2Successful value) successful,
    required TResult Function(RegisterPhase2Error value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegisterPhase2Start value)? $default, {
    TResult? Function(RegisterPhase2Successful value)? successful,
    TResult? Function(RegisterPhase2Error value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterPhase2Start value)? $default, {
    TResult Function(RegisterPhase2Successful value)? successful,
    TResult Function(RegisterPhase2Error value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RegisterPhase2Successful implements RegisterPhase2 {
  const factory RegisterPhase2Successful(final AppUser? user) =
      _$RegisterPhase2Successful;

  AppUser? get user;
  @JsonKey(ignore: true)
  _$$RegisterPhase2SuccessfulCopyWith<_$RegisterPhase2Successful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPhase2ErrorCopyWith<$Res> {
  factory _$$RegisterPhase2ErrorCopyWith(_$RegisterPhase2Error value,
          $Res Function(_$RegisterPhase2Error) then) =
      __$$RegisterPhase2ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$RegisterPhase2ErrorCopyWithImpl<$Res>
    extends _$RegisterPhase2CopyWithImpl<$Res, _$RegisterPhase2Error>
    implements _$$RegisterPhase2ErrorCopyWith<$Res> {
  __$$RegisterPhase2ErrorCopyWithImpl(
      _$RegisterPhase2Error _value, $Res Function(_$RegisterPhase2Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$RegisterPhase2Error(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$RegisterPhase2Error implements RegisterPhase2Error {
  const _$RegisterPhase2Error(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RegisterPhase2.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPhase2Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPhase2ErrorCopyWith<_$RegisterPhase2Error> get copyWith =>
      __$$RegisterPhase2ErrorCopyWithImpl<_$RegisterPhase2Error>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)
        $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)?
        $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String fullname, String phoneNumber, String photoUrl,
            ActionResult result)?
        $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegisterPhase2Start value) $default, {
    required TResult Function(RegisterPhase2Successful value) successful,
    required TResult Function(RegisterPhase2Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegisterPhase2Start value)? $default, {
    TResult? Function(RegisterPhase2Successful value)? successful,
    TResult? Function(RegisterPhase2Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegisterPhase2Start value)? $default, {
    TResult Function(RegisterPhase2Successful value)? successful,
    TResult Function(RegisterPhase2Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterPhase2Error implements RegisterPhase2, ErrorAction {
  const factory RegisterPhase2Error(
      final Object error, final StackTrace stackTrace) = _$RegisterPhase2Error;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$RegisterPhase2ErrorCopyWith<_$RegisterPhase2Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailVerify {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EmailVerifyStart value) $default, {
    required TResult Function(EmailVerifySuccessful value) successful,
    required TResult Function(EmailVerifyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(EmailVerifyStart value)? $default, {
    TResult? Function(EmailVerifySuccessful value)? successful,
    TResult? Function(EmailVerifyError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailVerifyStart value)? $default, {
    TResult Function(EmailVerifySuccessful value)? successful,
    TResult Function(EmailVerifyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerifyCopyWith<$Res> {
  factory $EmailVerifyCopyWith(
          EmailVerify value, $Res Function(EmailVerify) then) =
      _$EmailVerifyCopyWithImpl<$Res, EmailVerify>;
}

/// @nodoc
class _$EmailVerifyCopyWithImpl<$Res, $Val extends EmailVerify>
    implements $EmailVerifyCopyWith<$Res> {
  _$EmailVerifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailVerifyStartCopyWith<$Res> {
  factory _$$EmailVerifyStartCopyWith(
          _$EmailVerifyStart value, $Res Function(_$EmailVerifyStart) then) =
      __$$EmailVerifyStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerifyStartCopyWithImpl<$Res>
    extends _$EmailVerifyCopyWithImpl<$Res, _$EmailVerifyStart>
    implements _$$EmailVerifyStartCopyWith<$Res> {
  __$$EmailVerifyStartCopyWithImpl(
      _$EmailVerifyStart _value, $Res Function(_$EmailVerifyStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerifyStart implements EmailVerifyStart {
  const _$EmailVerifyStart();

  @override
  String toString() {
    return 'EmailVerify()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailVerifyStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EmailVerifyStart value) $default, {
    required TResult Function(EmailVerifySuccessful value) successful,
    required TResult Function(EmailVerifyError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(EmailVerifyStart value)? $default, {
    TResult? Function(EmailVerifySuccessful value)? successful,
    TResult? Function(EmailVerifyError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailVerifyStart value)? $default, {
    TResult Function(EmailVerifySuccessful value)? successful,
    TResult Function(EmailVerifyError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class EmailVerifyStart implements EmailVerify {
  const factory EmailVerifyStart() = _$EmailVerifyStart;
}

/// @nodoc
abstract class _$$EmailVerifySuccessfulCopyWith<$Res> {
  factory _$$EmailVerifySuccessfulCopyWith(_$EmailVerifySuccessful value,
          $Res Function(_$EmailVerifySuccessful) then) =
      __$$EmailVerifySuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerifySuccessfulCopyWithImpl<$Res>
    extends _$EmailVerifyCopyWithImpl<$Res, _$EmailVerifySuccessful>
    implements _$$EmailVerifySuccessfulCopyWith<$Res> {
  __$$EmailVerifySuccessfulCopyWithImpl(_$EmailVerifySuccessful _value,
      $Res Function(_$EmailVerifySuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerifySuccessful implements EmailVerifySuccessful {
  const _$EmailVerifySuccessful();

  @override
  String toString() {
    return 'EmailVerify.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailVerifySuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EmailVerifyStart value) $default, {
    required TResult Function(EmailVerifySuccessful value) successful,
    required TResult Function(EmailVerifyError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(EmailVerifyStart value)? $default, {
    TResult? Function(EmailVerifySuccessful value)? successful,
    TResult? Function(EmailVerifyError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailVerifyStart value)? $default, {
    TResult Function(EmailVerifySuccessful value)? successful,
    TResult Function(EmailVerifyError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class EmailVerifySuccessful implements EmailVerify {
  const factory EmailVerifySuccessful() = _$EmailVerifySuccessful;
}

/// @nodoc
abstract class _$$EmailVerifyErrorCopyWith<$Res> {
  factory _$$EmailVerifyErrorCopyWith(
          _$EmailVerifyError value, $Res Function(_$EmailVerifyError) then) =
      __$$EmailVerifyErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$EmailVerifyErrorCopyWithImpl<$Res>
    extends _$EmailVerifyCopyWithImpl<$Res, _$EmailVerifyError>
    implements _$$EmailVerifyErrorCopyWith<$Res> {
  __$$EmailVerifyErrorCopyWithImpl(
      _$EmailVerifyError _value, $Res Function(_$EmailVerifyError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$EmailVerifyError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$EmailVerifyError implements EmailVerifyError {
  const _$EmailVerifyError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'EmailVerify.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerifyError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerifyErrorCopyWith<_$EmailVerifyError> get copyWith =>
      __$$EmailVerifyErrorCopyWithImpl<_$EmailVerifyError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(EmailVerifyStart value) $default, {
    required TResult Function(EmailVerifySuccessful value) successful,
    required TResult Function(EmailVerifyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(EmailVerifyStart value)? $default, {
    TResult? Function(EmailVerifySuccessful value)? successful,
    TResult? Function(EmailVerifyError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(EmailVerifyStart value)? $default, {
    TResult Function(EmailVerifySuccessful value)? successful,
    TResult Function(EmailVerifyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EmailVerifyError implements EmailVerify, ErrorAction {
  const factory EmailVerifyError(
      final Object error, final StackTrace stackTrace) = _$EmailVerifyError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$EmailVerifyErrorCopyWith<_$EmailVerifyError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStartCopyWith<$Res> {
  factory _$$LoginStartCopyWith(
          _$LoginStart value, $Res Function(_$LoginStart) then) =
      __$$LoginStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, ActionResult result});
}

/// @nodoc
class __$$LoginStartCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginStart>
    implements _$$LoginStartCopyWith<$Res> {
  __$$LoginStartCopyWithImpl(
      _$LoginStart _value, $Res Function(_$LoginStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? result = null,
  }) {
    return _then(_$LoginStart(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$LoginStart implements LoginStart {
  const _$LoginStart(this.email, this.password, this.result);

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStart &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStartCopyWith<_$LoginStart> get copyWith =>
      __$$LoginStartCopyWithImpl<_$LoginStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoginStart implements Login {
  const factory LoginStart(final String email, final String password,
      final ActionResult result) = _$LoginStart;

  String get email;
  String get password;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$LoginStartCopyWith<_$LoginStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessfulCopyWith<$Res> {
  factory _$$LoginSuccessfulCopyWith(
          _$LoginSuccessful value, $Res Function(_$LoginSuccessful) then) =
      __$$LoginSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser? user});
}

/// @nodoc
class __$$LoginSuccessfulCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginSuccessful>
    implements _$$LoginSuccessfulCopyWith<$Res> {
  __$$LoginSuccessfulCopyWithImpl(
      _$LoginSuccessful _value, $Res Function(_$LoginSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoginSuccessful(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc

class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessfulCopyWith<_$LoginSuccessful> get copyWith =>
      __$$LoginSuccessfulCopyWithImpl<_$LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(final AppUser? user) = _$LoginSuccessful;

  AppUser? get user;
  @JsonKey(ignore: true)
  _$$LoginSuccessfulCopyWith<_$LoginSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorCopyWith<$Res> {
  factory _$$LoginErrorCopyWith(
          _$LoginError value, $Res Function(_$LoginError) then) =
      __$$LoginErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LoginErrorCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginError>
    implements _$$LoginErrorCopyWith<$Res> {
  __$$LoginErrorCopyWithImpl(
      _$LoginError _value, $Res Function(_$LoginError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LoginError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LoginError implements LoginError {
  const _$LoginError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Login.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorCopyWith<_$LoginError> get copyWith =>
      __$$LoginErrorCopyWithImpl<_$LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(final Object error, final StackTrace stackTrace) =
      _$LoginError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LoginErrorCopyWith<_$LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Signout {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignoutStart value) $default, {
    required TResult Function(SignoutSuccessful value) successful,
    required TResult Function(SignoutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignoutStart value)? $default, {
    TResult? Function(SignoutSuccessful value)? successful,
    TResult? Function(SignoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignoutStart value)? $default, {
    TResult Function(SignoutSuccessful value)? successful,
    TResult Function(SignoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignoutCopyWith<$Res> {
  factory $SignoutCopyWith(Signout value, $Res Function(Signout) then) =
      _$SignoutCopyWithImpl<$Res, Signout>;
}

/// @nodoc
class _$SignoutCopyWithImpl<$Res, $Val extends Signout>
    implements $SignoutCopyWith<$Res> {
  _$SignoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignoutStartCopyWith<$Res> {
  factory _$$SignoutStartCopyWith(
          _$SignoutStart value, $Res Function(_$SignoutStart) then) =
      __$$SignoutStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignoutStartCopyWithImpl<$Res>
    extends _$SignoutCopyWithImpl<$Res, _$SignoutStart>
    implements _$$SignoutStartCopyWith<$Res> {
  __$$SignoutStartCopyWithImpl(
      _$SignoutStart _value, $Res Function(_$SignoutStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignoutStart implements SignoutStart {
  const _$SignoutStart();

  @override
  String toString() {
    return 'Signout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignoutStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignoutStart value) $default, {
    required TResult Function(SignoutSuccessful value) successful,
    required TResult Function(SignoutError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignoutStart value)? $default, {
    TResult? Function(SignoutSuccessful value)? successful,
    TResult? Function(SignoutError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignoutStart value)? $default, {
    TResult Function(SignoutSuccessful value)? successful,
    TResult Function(SignoutError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignoutStart implements Signout {
  const factory SignoutStart() = _$SignoutStart;
}

/// @nodoc
abstract class _$$SignoutSuccessfulCopyWith<$Res> {
  factory _$$SignoutSuccessfulCopyWith(
          _$SignoutSuccessful value, $Res Function(_$SignoutSuccessful) then) =
      __$$SignoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignoutSuccessfulCopyWithImpl<$Res>
    extends _$SignoutCopyWithImpl<$Res, _$SignoutSuccessful>
    implements _$$SignoutSuccessfulCopyWith<$Res> {
  __$$SignoutSuccessfulCopyWithImpl(
      _$SignoutSuccessful _value, $Res Function(_$SignoutSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignoutSuccessful implements SignoutSuccessful {
  const _$SignoutSuccessful();

  @override
  String toString() {
    return 'Signout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignoutStart value) $default, {
    required TResult Function(SignoutSuccessful value) successful,
    required TResult Function(SignoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignoutStart value)? $default, {
    TResult? Function(SignoutSuccessful value)? successful,
    TResult? Function(SignoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignoutStart value)? $default, {
    TResult Function(SignoutSuccessful value)? successful,
    TResult Function(SignoutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignoutSuccessful implements Signout {
  const factory SignoutSuccessful() = _$SignoutSuccessful;
}

/// @nodoc
abstract class _$$SignoutErrorCopyWith<$Res> {
  factory _$$SignoutErrorCopyWith(
          _$SignoutError value, $Res Function(_$SignoutError) then) =
      __$$SignoutErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SignoutErrorCopyWithImpl<$Res>
    extends _$SignoutCopyWithImpl<$Res, _$SignoutError>
    implements _$$SignoutErrorCopyWith<$Res> {
  __$$SignoutErrorCopyWithImpl(
      _$SignoutError _value, $Res Function(_$SignoutError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$SignoutError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SignoutError implements SignoutError {
  const _$SignoutError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Signout.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignoutError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignoutErrorCopyWith<_$SignoutError> get copyWith =>
      __$$SignoutErrorCopyWithImpl<_$SignoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignoutStart value) $default, {
    required TResult Function(SignoutSuccessful value) successful,
    required TResult Function(SignoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignoutStart value)? $default, {
    TResult? Function(SignoutSuccessful value)? successful,
    TResult? Function(SignoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignoutStart value)? $default, {
    TResult Function(SignoutSuccessful value)? successful,
    TResult Function(SignoutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignoutError implements Signout, ErrorAction {
  const factory SignoutError(final Object error, final StackTrace stackTrace) =
      _$SignoutError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$SignoutErrorCopyWith<_$SignoutError> get copyWith =>
      throw _privateConstructorUsedError;
}
