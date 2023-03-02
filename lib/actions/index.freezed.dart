// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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

/// @nodoc
mixin _$GetPlaces {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String filter, ActionResult result) $default, {
    required TResult Function(Map<String, dynamic> body) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String filter, ActionResult result)? $default, {
    TResult? Function(Map<String, dynamic> body)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String filter, ActionResult result)? $default, {
    TResult Function(Map<String, dynamic> body)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlacesStart value) $default, {
    required TResult Function(GetPlacesSuccessful value) successful,
    required TResult Function(GetPlacesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlacesStart value)? $default, {
    TResult? Function(GetPlacesSuccessful value)? successful,
    TResult? Function(GetPlacesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlacesStart value)? $default, {
    TResult Function(GetPlacesSuccessful value)? successful,
    TResult Function(GetPlacesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlacesCopyWith<$Res> {
  factory $GetPlacesCopyWith(GetPlaces value, $Res Function(GetPlaces) then) =
      _$GetPlacesCopyWithImpl<$Res, GetPlaces>;
}

/// @nodoc
class _$GetPlacesCopyWithImpl<$Res, $Val extends GetPlaces>
    implements $GetPlacesCopyWith<$Res> {
  _$GetPlacesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPlacesStartCopyWith<$Res> {
  factory _$$GetPlacesStartCopyWith(
          _$GetPlacesStart value, $Res Function(_$GetPlacesStart) then) =
      __$$GetPlacesStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String filter, ActionResult result});
}

/// @nodoc
class __$$GetPlacesStartCopyWithImpl<$Res>
    extends _$GetPlacesCopyWithImpl<$Res, _$GetPlacesStart>
    implements _$$GetPlacesStartCopyWith<$Res> {
  __$$GetPlacesStartCopyWithImpl(
      _$GetPlacesStart _value, $Res Function(_$GetPlacesStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? result = null,
  }) {
    return _then(_$GetPlacesStart(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$GetPlacesStart implements GetPlacesStart {
  const _$GetPlacesStart(this.filter, this.result);

  @override
  final String filter;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'GetPlaces(filter: $filter, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlacesStart &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlacesStartCopyWith<_$GetPlacesStart> get copyWith =>
      __$$GetPlacesStartCopyWithImpl<_$GetPlacesStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String filter, ActionResult result) $default, {
    required TResult Function(Map<String, dynamic> body) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(filter, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String filter, ActionResult result)? $default, {
    TResult? Function(Map<String, dynamic> body)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(filter, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String filter, ActionResult result)? $default, {
    TResult Function(Map<String, dynamic> body)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(filter, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlacesStart value) $default, {
    required TResult Function(GetPlacesSuccessful value) successful,
    required TResult Function(GetPlacesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlacesStart value)? $default, {
    TResult? Function(GetPlacesSuccessful value)? successful,
    TResult? Function(GetPlacesError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlacesStart value)? $default, {
    TResult Function(GetPlacesSuccessful value)? successful,
    TResult Function(GetPlacesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPlacesStart implements GetPlaces {
  const factory GetPlacesStart(final String filter, final ActionResult result) =
      _$GetPlacesStart;

  String get filter;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$GetPlacesStartCopyWith<_$GetPlacesStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlacesSuccessfulCopyWith<$Res> {
  factory _$$GetPlacesSuccessfulCopyWith(_$GetPlacesSuccessful value,
          $Res Function(_$GetPlacesSuccessful) then) =
      __$$GetPlacesSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> body});
}

/// @nodoc
class __$$GetPlacesSuccessfulCopyWithImpl<$Res>
    extends _$GetPlacesCopyWithImpl<$Res, _$GetPlacesSuccessful>
    implements _$$GetPlacesSuccessfulCopyWith<$Res> {
  __$$GetPlacesSuccessfulCopyWithImpl(
      _$GetPlacesSuccessful _value, $Res Function(_$GetPlacesSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$GetPlacesSuccessful(
      null == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$GetPlacesSuccessful implements GetPlacesSuccessful {
  const _$GetPlacesSuccessful(final Map<String, dynamic> body) : _body = body;

  final Map<String, dynamic> _body;
  @override
  Map<String, dynamic> get body {
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_body);
  }

  @override
  String toString() {
    return 'GetPlaces.successful(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlacesSuccessful &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlacesSuccessfulCopyWith<_$GetPlacesSuccessful> get copyWith =>
      __$$GetPlacesSuccessfulCopyWithImpl<_$GetPlacesSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String filter, ActionResult result) $default, {
    required TResult Function(Map<String, dynamic> body) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String filter, ActionResult result)? $default, {
    TResult? Function(Map<String, dynamic> body)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String filter, ActionResult result)? $default, {
    TResult Function(Map<String, dynamic> body)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlacesStart value) $default, {
    required TResult Function(GetPlacesSuccessful value) successful,
    required TResult Function(GetPlacesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlacesStart value)? $default, {
    TResult? Function(GetPlacesSuccessful value)? successful,
    TResult? Function(GetPlacesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlacesStart value)? $default, {
    TResult Function(GetPlacesSuccessful value)? successful,
    TResult Function(GetPlacesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPlacesSuccessful implements GetPlaces {
  const factory GetPlacesSuccessful(final Map<String, dynamic> body) =
      _$GetPlacesSuccessful;

  Map<String, dynamic> get body;
  @JsonKey(ignore: true)
  _$$GetPlacesSuccessfulCopyWith<_$GetPlacesSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlacesErrorCopyWith<$Res> {
  factory _$$GetPlacesErrorCopyWith(
          _$GetPlacesError value, $Res Function(_$GetPlacesError) then) =
      __$$GetPlacesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPlacesErrorCopyWithImpl<$Res>
    extends _$GetPlacesCopyWithImpl<$Res, _$GetPlacesError>
    implements _$$GetPlacesErrorCopyWith<$Res> {
  __$$GetPlacesErrorCopyWithImpl(
      _$GetPlacesError _value, $Res Function(_$GetPlacesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPlacesError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPlacesError implements GetPlacesError {
  const _$GetPlacesError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPlaces.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlacesError &&
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
  _$$GetPlacesErrorCopyWith<_$GetPlacesError> get copyWith =>
      __$$GetPlacesErrorCopyWithImpl<_$GetPlacesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String filter, ActionResult result) $default, {
    required TResult Function(Map<String, dynamic> body) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String filter, ActionResult result)? $default, {
    TResult? Function(Map<String, dynamic> body)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String filter, ActionResult result)? $default, {
    TResult Function(Map<String, dynamic> body)? successful,
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
    TResult Function(GetPlacesStart value) $default, {
    required TResult Function(GetPlacesSuccessful value) successful,
    required TResult Function(GetPlacesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlacesStart value)? $default, {
    TResult? Function(GetPlacesSuccessful value)? successful,
    TResult? Function(GetPlacesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlacesStart value)? $default, {
    TResult Function(GetPlacesSuccessful value)? successful,
    TResult Function(GetPlacesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPlacesError implements GetPlaces, ErrorAction {
  const factory GetPlacesError(
      final Object error, final StackTrace stackTrace) = _$GetPlacesError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetPlacesErrorCopyWith<_$GetPlacesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPlaceDetails {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int idplace, int iduser, ActionResult result) $default, {
    required TResult Function(Place place) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int idplace, int iduser, ActionResult result)? $default, {
    TResult? Function(Place place)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int idplace, int iduser, ActionResult result)? $default, {
    TResult Function(Place place)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceDetailsStart value) $default, {
    required TResult Function(GetPlaceDetailsSuccessful value) successful,
    required TResult Function(GetPlaceDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceDetailsStart value)? $default, {
    TResult? Function(GetPlaceDetailsSuccessful value)? successful,
    TResult? Function(GetPlaceDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceDetailsStart value)? $default, {
    TResult Function(GetPlaceDetailsSuccessful value)? successful,
    TResult Function(GetPlaceDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlaceDetailsCopyWith<$Res> {
  factory $GetPlaceDetailsCopyWith(
          GetPlaceDetails value, $Res Function(GetPlaceDetails) then) =
      _$GetPlaceDetailsCopyWithImpl<$Res, GetPlaceDetails>;
}

/// @nodoc
class _$GetPlaceDetailsCopyWithImpl<$Res, $Val extends GetPlaceDetails>
    implements $GetPlaceDetailsCopyWith<$Res> {
  _$GetPlaceDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPlaceDetailsStartCopyWith<$Res> {
  factory _$$GetPlaceDetailsStartCopyWith(_$GetPlaceDetailsStart value,
          $Res Function(_$GetPlaceDetailsStart) then) =
      __$$GetPlaceDetailsStartCopyWithImpl<$Res>;
  @useResult
  $Res call({int idplace, int iduser, ActionResult result});
}

/// @nodoc
class __$$GetPlaceDetailsStartCopyWithImpl<$Res>
    extends _$GetPlaceDetailsCopyWithImpl<$Res, _$GetPlaceDetailsStart>
    implements _$$GetPlaceDetailsStartCopyWith<$Res> {
  __$$GetPlaceDetailsStartCopyWithImpl(_$GetPlaceDetailsStart _value,
      $Res Function(_$GetPlaceDetailsStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idplace = null,
    Object? iduser = null,
    Object? result = null,
  }) {
    return _then(_$GetPlaceDetailsStart(
      null == idplace
          ? _value.idplace
          : idplace // ignore: cast_nullable_to_non_nullable
              as int,
      null == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as int,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$GetPlaceDetailsStart implements GetPlaceDetailsStart {
  const _$GetPlaceDetailsStart(this.idplace, this.iduser, this.result);

  @override
  final int idplace;
  @override
  final int iduser;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'GetPlaceDetails(idplace: $idplace, iduser: $iduser, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceDetailsStart &&
            (identical(other.idplace, idplace) || other.idplace == idplace) &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idplace, iduser, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaceDetailsStartCopyWith<_$GetPlaceDetailsStart> get copyWith =>
      __$$GetPlaceDetailsStartCopyWithImpl<_$GetPlaceDetailsStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int idplace, int iduser, ActionResult result) $default, {
    required TResult Function(Place place) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(idplace, iduser, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int idplace, int iduser, ActionResult result)? $default, {
    TResult? Function(Place place)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(idplace, iduser, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int idplace, int iduser, ActionResult result)? $default, {
    TResult Function(Place place)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(idplace, iduser, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceDetailsStart value) $default, {
    required TResult Function(GetPlaceDetailsSuccessful value) successful,
    required TResult Function(GetPlaceDetailsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceDetailsStart value)? $default, {
    TResult? Function(GetPlaceDetailsSuccessful value)? successful,
    TResult? Function(GetPlaceDetailsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceDetailsStart value)? $default, {
    TResult Function(GetPlaceDetailsSuccessful value)? successful,
    TResult Function(GetPlaceDetailsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPlaceDetailsStart implements GetPlaceDetails {
  const factory GetPlaceDetailsStart(
          final int idplace, final int iduser, final ActionResult result) =
      _$GetPlaceDetailsStart;

  int get idplace;
  int get iduser;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$GetPlaceDetailsStartCopyWith<_$GetPlaceDetailsStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaceDetailsSuccessfulCopyWith<$Res> {
  factory _$$GetPlaceDetailsSuccessfulCopyWith(
          _$GetPlaceDetailsSuccessful value,
          $Res Function(_$GetPlaceDetailsSuccessful) then) =
      __$$GetPlaceDetailsSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({Place place});
}

/// @nodoc
class __$$GetPlaceDetailsSuccessfulCopyWithImpl<$Res>
    extends _$GetPlaceDetailsCopyWithImpl<$Res, _$GetPlaceDetailsSuccessful>
    implements _$$GetPlaceDetailsSuccessfulCopyWith<$Res> {
  __$$GetPlaceDetailsSuccessfulCopyWithImpl(_$GetPlaceDetailsSuccessful _value,
      $Res Function(_$GetPlaceDetailsSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$GetPlaceDetailsSuccessful(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$GetPlaceDetailsSuccessful implements GetPlaceDetailsSuccessful {
  const _$GetPlaceDetailsSuccessful(this.place);

  @override
  final Place place;

  @override
  String toString() {
    return 'GetPlaceDetails.successful(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceDetailsSuccessful &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaceDetailsSuccessfulCopyWith<_$GetPlaceDetailsSuccessful>
      get copyWith => __$$GetPlaceDetailsSuccessfulCopyWithImpl<
          _$GetPlaceDetailsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int idplace, int iduser, ActionResult result) $default, {
    required TResult Function(Place place) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int idplace, int iduser, ActionResult result)? $default, {
    TResult? Function(Place place)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int idplace, int iduser, ActionResult result)? $default, {
    TResult Function(Place place)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceDetailsStart value) $default, {
    required TResult Function(GetPlaceDetailsSuccessful value) successful,
    required TResult Function(GetPlaceDetailsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceDetailsStart value)? $default, {
    TResult? Function(GetPlaceDetailsSuccessful value)? successful,
    TResult? Function(GetPlaceDetailsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceDetailsStart value)? $default, {
    TResult Function(GetPlaceDetailsSuccessful value)? successful,
    TResult Function(GetPlaceDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPlaceDetailsSuccessful implements GetPlaceDetails {
  const factory GetPlaceDetailsSuccessful(final Place place) =
      _$GetPlaceDetailsSuccessful;

  Place get place;
  @JsonKey(ignore: true)
  _$$GetPlaceDetailsSuccessfulCopyWith<_$GetPlaceDetailsSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaceDetailsErrorCopyWith<$Res> {
  factory _$$GetPlaceDetailsErrorCopyWith(_$GetPlaceDetailsError value,
          $Res Function(_$GetPlaceDetailsError) then) =
      __$$GetPlaceDetailsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPlaceDetailsErrorCopyWithImpl<$Res>
    extends _$GetPlaceDetailsCopyWithImpl<$Res, _$GetPlaceDetailsError>
    implements _$$GetPlaceDetailsErrorCopyWith<$Res> {
  __$$GetPlaceDetailsErrorCopyWithImpl(_$GetPlaceDetailsError _value,
      $Res Function(_$GetPlaceDetailsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPlaceDetailsError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPlaceDetailsError implements GetPlaceDetailsError {
  const _$GetPlaceDetailsError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPlaceDetails.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceDetailsError &&
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
  _$$GetPlaceDetailsErrorCopyWith<_$GetPlaceDetailsError> get copyWith =>
      __$$GetPlaceDetailsErrorCopyWithImpl<_$GetPlaceDetailsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int idplace, int iduser, ActionResult result) $default, {
    required TResult Function(Place place) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int idplace, int iduser, ActionResult result)? $default, {
    TResult? Function(Place place)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int idplace, int iduser, ActionResult result)? $default, {
    TResult Function(Place place)? successful,
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
    TResult Function(GetPlaceDetailsStart value) $default, {
    required TResult Function(GetPlaceDetailsSuccessful value) successful,
    required TResult Function(GetPlaceDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceDetailsStart value)? $default, {
    TResult? Function(GetPlaceDetailsSuccessful value)? successful,
    TResult? Function(GetPlaceDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceDetailsStart value)? $default, {
    TResult Function(GetPlaceDetailsSuccessful value)? successful,
    TResult Function(GetPlaceDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPlaceDetailsError implements GetPlaceDetails, ErrorAction {
  const factory GetPlaceDetailsError(
      final Object error, final StackTrace stackTrace) = _$GetPlaceDetailsError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetPlaceDetailsErrorCopyWith<_$GetPlaceDetailsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPlaceActivities {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int idplace, ActionResult result) $default, {
    required TResult Function(List<PlaceActivity> activities) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int idplace, ActionResult result)? $default, {
    TResult? Function(List<PlaceActivity> activities)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int idplace, ActionResult result)? $default, {
    TResult Function(List<PlaceActivity> activities)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceActivitiesStart value) $default, {
    required TResult Function(GetPlaceActivitiesSuccessful value) successful,
    required TResult Function(GetPlaceActivitiesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceActivitiesStart value)? $default, {
    TResult? Function(GetPlaceActivitiesSuccessful value)? successful,
    TResult? Function(GetPlaceActivitiesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceActivitiesStart value)? $default, {
    TResult Function(GetPlaceActivitiesSuccessful value)? successful,
    TResult Function(GetPlaceActivitiesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlaceActivitiesCopyWith<$Res> {
  factory $GetPlaceActivitiesCopyWith(
          GetPlaceActivities value, $Res Function(GetPlaceActivities) then) =
      _$GetPlaceActivitiesCopyWithImpl<$Res, GetPlaceActivities>;
}

/// @nodoc
class _$GetPlaceActivitiesCopyWithImpl<$Res, $Val extends GetPlaceActivities>
    implements $GetPlaceActivitiesCopyWith<$Res> {
  _$GetPlaceActivitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPlaceActivitiesStartCopyWith<$Res> {
  factory _$$GetPlaceActivitiesStartCopyWith(_$GetPlaceActivitiesStart value,
          $Res Function(_$GetPlaceActivitiesStart) then) =
      __$$GetPlaceActivitiesStartCopyWithImpl<$Res>;
  @useResult
  $Res call({int idplace, ActionResult result});
}

/// @nodoc
class __$$GetPlaceActivitiesStartCopyWithImpl<$Res>
    extends _$GetPlaceActivitiesCopyWithImpl<$Res, _$GetPlaceActivitiesStart>
    implements _$$GetPlaceActivitiesStartCopyWith<$Res> {
  __$$GetPlaceActivitiesStartCopyWithImpl(_$GetPlaceActivitiesStart _value,
      $Res Function(_$GetPlaceActivitiesStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idplace = null,
    Object? result = null,
  }) {
    return _then(_$GetPlaceActivitiesStart(
      null == idplace
          ? _value.idplace
          : idplace // ignore: cast_nullable_to_non_nullable
              as int,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$GetPlaceActivitiesStart implements GetPlaceActivitiesStart {
  const _$GetPlaceActivitiesStart(this.idplace, this.result);

  @override
  final int idplace;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'GetPlaceActivities(idplace: $idplace, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceActivitiesStart &&
            (identical(other.idplace, idplace) || other.idplace == idplace) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idplace, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaceActivitiesStartCopyWith<_$GetPlaceActivitiesStart> get copyWith =>
      __$$GetPlaceActivitiesStartCopyWithImpl<_$GetPlaceActivitiesStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int idplace, ActionResult result) $default, {
    required TResult Function(List<PlaceActivity> activities) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(idplace, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int idplace, ActionResult result)? $default, {
    TResult? Function(List<PlaceActivity> activities)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(idplace, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int idplace, ActionResult result)? $default, {
    TResult Function(List<PlaceActivity> activities)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(idplace, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceActivitiesStart value) $default, {
    required TResult Function(GetPlaceActivitiesSuccessful value) successful,
    required TResult Function(GetPlaceActivitiesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceActivitiesStart value)? $default, {
    TResult? Function(GetPlaceActivitiesSuccessful value)? successful,
    TResult? Function(GetPlaceActivitiesError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceActivitiesStart value)? $default, {
    TResult Function(GetPlaceActivitiesSuccessful value)? successful,
    TResult Function(GetPlaceActivitiesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPlaceActivitiesStart implements GetPlaceActivities {
  const factory GetPlaceActivitiesStart(
      final int idplace, final ActionResult result) = _$GetPlaceActivitiesStart;

  int get idplace;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$GetPlaceActivitiesStartCopyWith<_$GetPlaceActivitiesStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaceActivitiesSuccessfulCopyWith<$Res> {
  factory _$$GetPlaceActivitiesSuccessfulCopyWith(
          _$GetPlaceActivitiesSuccessful value,
          $Res Function(_$GetPlaceActivitiesSuccessful) then) =
      __$$GetPlaceActivitiesSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlaceActivity> activities});
}

/// @nodoc
class __$$GetPlaceActivitiesSuccessfulCopyWithImpl<$Res>
    extends _$GetPlaceActivitiesCopyWithImpl<$Res,
        _$GetPlaceActivitiesSuccessful>
    implements _$$GetPlaceActivitiesSuccessfulCopyWith<$Res> {
  __$$GetPlaceActivitiesSuccessfulCopyWithImpl(
      _$GetPlaceActivitiesSuccessful _value,
      $Res Function(_$GetPlaceActivitiesSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
  }) {
    return _then(_$GetPlaceActivitiesSuccessful(
      null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<PlaceActivity>,
    ));
  }
}

/// @nodoc

class _$GetPlaceActivitiesSuccessful implements GetPlaceActivitiesSuccessful {
  const _$GetPlaceActivitiesSuccessful(final List<PlaceActivity> activities)
      : _activities = activities;

  final List<PlaceActivity> _activities;
  @override
  List<PlaceActivity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'GetPlaceActivities.successful(activities: $activities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceActivitiesSuccessful &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaceActivitiesSuccessfulCopyWith<_$GetPlaceActivitiesSuccessful>
      get copyWith => __$$GetPlaceActivitiesSuccessfulCopyWithImpl<
          _$GetPlaceActivitiesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int idplace, ActionResult result) $default, {
    required TResult Function(List<PlaceActivity> activities) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(activities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int idplace, ActionResult result)? $default, {
    TResult? Function(List<PlaceActivity> activities)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(activities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int idplace, ActionResult result)? $default, {
    TResult Function(List<PlaceActivity> activities)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(activities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceActivitiesStart value) $default, {
    required TResult Function(GetPlaceActivitiesSuccessful value) successful,
    required TResult Function(GetPlaceActivitiesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceActivitiesStart value)? $default, {
    TResult? Function(GetPlaceActivitiesSuccessful value)? successful,
    TResult? Function(GetPlaceActivitiesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceActivitiesStart value)? $default, {
    TResult Function(GetPlaceActivitiesSuccessful value)? successful,
    TResult Function(GetPlaceActivitiesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPlaceActivitiesSuccessful implements GetPlaceActivities {
  const factory GetPlaceActivitiesSuccessful(
      final List<PlaceActivity> activities) = _$GetPlaceActivitiesSuccessful;

  List<PlaceActivity> get activities;
  @JsonKey(ignore: true)
  _$$GetPlaceActivitiesSuccessfulCopyWith<_$GetPlaceActivitiesSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaceActivitiesErrorCopyWith<$Res> {
  factory _$$GetPlaceActivitiesErrorCopyWith(_$GetPlaceActivitiesError value,
          $Res Function(_$GetPlaceActivitiesError) then) =
      __$$GetPlaceActivitiesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPlaceActivitiesErrorCopyWithImpl<$Res>
    extends _$GetPlaceActivitiesCopyWithImpl<$Res, _$GetPlaceActivitiesError>
    implements _$$GetPlaceActivitiesErrorCopyWith<$Res> {
  __$$GetPlaceActivitiesErrorCopyWithImpl(_$GetPlaceActivitiesError _value,
      $Res Function(_$GetPlaceActivitiesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPlaceActivitiesError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPlaceActivitiesError implements GetPlaceActivitiesError {
  const _$GetPlaceActivitiesError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPlaceActivities.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceActivitiesError &&
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
  _$$GetPlaceActivitiesErrorCopyWith<_$GetPlaceActivitiesError> get copyWith =>
      __$$GetPlaceActivitiesErrorCopyWithImpl<_$GetPlaceActivitiesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int idplace, ActionResult result) $default, {
    required TResult Function(List<PlaceActivity> activities) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int idplace, ActionResult result)? $default, {
    TResult? Function(List<PlaceActivity> activities)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int idplace, ActionResult result)? $default, {
    TResult Function(List<PlaceActivity> activities)? successful,
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
    TResult Function(GetPlaceActivitiesStart value) $default, {
    required TResult Function(GetPlaceActivitiesSuccessful value) successful,
    required TResult Function(GetPlaceActivitiesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceActivitiesStart value)? $default, {
    TResult? Function(GetPlaceActivitiesSuccessful value)? successful,
    TResult? Function(GetPlaceActivitiesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceActivitiesStart value)? $default, {
    TResult Function(GetPlaceActivitiesSuccessful value)? successful,
    TResult Function(GetPlaceActivitiesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPlaceActivitiesError
    implements GetPlaceActivities, ErrorAction {
  const factory GetPlaceActivitiesError(
          final Object error, final StackTrace stackTrace) =
      _$GetPlaceActivitiesError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetPlaceActivitiesErrorCopyWith<_$GetPlaceActivitiesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPlaceActivityAvailability {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int idactivity, String date, int partySize, ActionResult result)
        $default, {
    required TResult Function(List<PlaceActivityAvailability> availability)
        successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int idactivity, String date, int partySize, ActionResult result)?
        $default, {
    TResult? Function(List<PlaceActivityAvailability> availability)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int idactivity, String date, int partySize, ActionResult result)?
        $default, {
    TResult Function(List<PlaceActivityAvailability> availability)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceActivityAvailabilityStart value) $default, {
    required TResult Function(GetPlaceActivityAvailabilitySuccessful value)
        successful,
    required TResult Function(GetPlaceActivityAvailabilityError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceActivityAvailabilityStart value)? $default, {
    TResult? Function(GetPlaceActivityAvailabilitySuccessful value)? successful,
    TResult? Function(GetPlaceActivityAvailabilityError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceActivityAvailabilityStart value)? $default, {
    TResult Function(GetPlaceActivityAvailabilitySuccessful value)? successful,
    TResult Function(GetPlaceActivityAvailabilityError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlaceActivityAvailabilityCopyWith<$Res> {
  factory $GetPlaceActivityAvailabilityCopyWith(
          GetPlaceActivityAvailability value,
          $Res Function(GetPlaceActivityAvailability) then) =
      _$GetPlaceActivityAvailabilityCopyWithImpl<$Res,
          GetPlaceActivityAvailability>;
}

/// @nodoc
class _$GetPlaceActivityAvailabilityCopyWithImpl<$Res,
        $Val extends GetPlaceActivityAvailability>
    implements $GetPlaceActivityAvailabilityCopyWith<$Res> {
  _$GetPlaceActivityAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPlaceActivityAvailabilityStartCopyWith<$Res> {
  factory _$$GetPlaceActivityAvailabilityStartCopyWith(
          _$GetPlaceActivityAvailabilityStart value,
          $Res Function(_$GetPlaceActivityAvailabilityStart) then) =
      __$$GetPlaceActivityAvailabilityStartCopyWithImpl<$Res>;
  @useResult
  $Res call({int idactivity, String date, int partySize, ActionResult result});
}

/// @nodoc
class __$$GetPlaceActivityAvailabilityStartCopyWithImpl<$Res>
    extends _$GetPlaceActivityAvailabilityCopyWithImpl<$Res,
        _$GetPlaceActivityAvailabilityStart>
    implements _$$GetPlaceActivityAvailabilityStartCopyWith<$Res> {
  __$$GetPlaceActivityAvailabilityStartCopyWithImpl(
      _$GetPlaceActivityAvailabilityStart _value,
      $Res Function(_$GetPlaceActivityAvailabilityStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idactivity = null,
    Object? date = null,
    Object? partySize = null,
    Object? result = null,
  }) {
    return _then(_$GetPlaceActivityAvailabilityStart(
      null == idactivity
          ? _value.idactivity
          : idactivity // ignore: cast_nullable_to_non_nullable
              as int,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      null == partySize
          ? _value.partySize
          : partySize // ignore: cast_nullable_to_non_nullable
              as int,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$GetPlaceActivityAvailabilityStart
    implements GetPlaceActivityAvailabilityStart {
  const _$GetPlaceActivityAvailabilityStart(
      this.idactivity, this.date, this.partySize, this.result);

  @override
  final int idactivity;
  @override
  final String date;
  @override
  final int partySize;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'GetPlaceActivityAvailability(idactivity: $idactivity, date: $date, partySize: $partySize, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceActivityAvailabilityStart &&
            (identical(other.idactivity, idactivity) ||
                other.idactivity == idactivity) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.partySize, partySize) ||
                other.partySize == partySize) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idactivity, date, partySize, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaceActivityAvailabilityStartCopyWith<
          _$GetPlaceActivityAvailabilityStart>
      get copyWith => __$$GetPlaceActivityAvailabilityStartCopyWithImpl<
          _$GetPlaceActivityAvailabilityStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int idactivity, String date, int partySize, ActionResult result)
        $default, {
    required TResult Function(List<PlaceActivityAvailability> availability)
        successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(idactivity, date, partySize, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int idactivity, String date, int partySize, ActionResult result)?
        $default, {
    TResult? Function(List<PlaceActivityAvailability> availability)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(idactivity, date, partySize, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int idactivity, String date, int partySize, ActionResult result)?
        $default, {
    TResult Function(List<PlaceActivityAvailability> availability)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(idactivity, date, partySize, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceActivityAvailabilityStart value) $default, {
    required TResult Function(GetPlaceActivityAvailabilitySuccessful value)
        successful,
    required TResult Function(GetPlaceActivityAvailabilityError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceActivityAvailabilityStart value)? $default, {
    TResult? Function(GetPlaceActivityAvailabilitySuccessful value)? successful,
    TResult? Function(GetPlaceActivityAvailabilityError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceActivityAvailabilityStart value)? $default, {
    TResult Function(GetPlaceActivityAvailabilitySuccessful value)? successful,
    TResult Function(GetPlaceActivityAvailabilityError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPlaceActivityAvailabilityStart
    implements GetPlaceActivityAvailability {
  const factory GetPlaceActivityAvailabilityStart(
      final int idactivity,
      final String date,
      final int partySize,
      final ActionResult result) = _$GetPlaceActivityAvailabilityStart;

  int get idactivity;
  String get date;
  int get partySize;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$GetPlaceActivityAvailabilityStartCopyWith<
          _$GetPlaceActivityAvailabilityStart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaceActivityAvailabilitySuccessfulCopyWith<$Res> {
  factory _$$GetPlaceActivityAvailabilitySuccessfulCopyWith(
          _$GetPlaceActivityAvailabilitySuccessful value,
          $Res Function(_$GetPlaceActivityAvailabilitySuccessful) then) =
      __$$GetPlaceActivityAvailabilitySuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlaceActivityAvailability> availability});
}

/// @nodoc
class __$$GetPlaceActivityAvailabilitySuccessfulCopyWithImpl<$Res>
    extends _$GetPlaceActivityAvailabilityCopyWithImpl<$Res,
        _$GetPlaceActivityAvailabilitySuccessful>
    implements _$$GetPlaceActivityAvailabilitySuccessfulCopyWith<$Res> {
  __$$GetPlaceActivityAvailabilitySuccessfulCopyWithImpl(
      _$GetPlaceActivityAvailabilitySuccessful _value,
      $Res Function(_$GetPlaceActivityAvailabilitySuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availability = null,
  }) {
    return _then(_$GetPlaceActivityAvailabilitySuccessful(
      null == availability
          ? _value._availability
          : availability // ignore: cast_nullable_to_non_nullable
              as List<PlaceActivityAvailability>,
    ));
  }
}

/// @nodoc

class _$GetPlaceActivityAvailabilitySuccessful
    implements GetPlaceActivityAvailabilitySuccessful {
  const _$GetPlaceActivityAvailabilitySuccessful(
      final List<PlaceActivityAvailability> availability)
      : _availability = availability;

  final List<PlaceActivityAvailability> _availability;
  @override
  List<PlaceActivityAvailability> get availability {
    if (_availability is EqualUnmodifiableListView) return _availability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availability);
  }

  @override
  String toString() {
    return 'GetPlaceActivityAvailability.successful(availability: $availability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceActivityAvailabilitySuccessful &&
            const DeepCollectionEquality()
                .equals(other._availability, _availability));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_availability));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaceActivityAvailabilitySuccessfulCopyWith<
          _$GetPlaceActivityAvailabilitySuccessful>
      get copyWith => __$$GetPlaceActivityAvailabilitySuccessfulCopyWithImpl<
          _$GetPlaceActivityAvailabilitySuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int idactivity, String date, int partySize, ActionResult result)
        $default, {
    required TResult Function(List<PlaceActivityAvailability> availability)
        successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(availability);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int idactivity, String date, int partySize, ActionResult result)?
        $default, {
    TResult? Function(List<PlaceActivityAvailability> availability)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(availability);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int idactivity, String date, int partySize, ActionResult result)?
        $default, {
    TResult Function(List<PlaceActivityAvailability> availability)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(availability);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPlaceActivityAvailabilityStart value) $default, {
    required TResult Function(GetPlaceActivityAvailabilitySuccessful value)
        successful,
    required TResult Function(GetPlaceActivityAvailabilityError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceActivityAvailabilityStart value)? $default, {
    TResult? Function(GetPlaceActivityAvailabilitySuccessful value)? successful,
    TResult? Function(GetPlaceActivityAvailabilityError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceActivityAvailabilityStart value)? $default, {
    TResult Function(GetPlaceActivityAvailabilitySuccessful value)? successful,
    TResult Function(GetPlaceActivityAvailabilityError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPlaceActivityAvailabilitySuccessful
    implements GetPlaceActivityAvailability {
  const factory GetPlaceActivityAvailabilitySuccessful(
          final List<PlaceActivityAvailability> availability) =
      _$GetPlaceActivityAvailabilitySuccessful;

  List<PlaceActivityAvailability> get availability;
  @JsonKey(ignore: true)
  _$$GetPlaceActivityAvailabilitySuccessfulCopyWith<
          _$GetPlaceActivityAvailabilitySuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaceActivityAvailabilityErrorCopyWith<$Res> {
  factory _$$GetPlaceActivityAvailabilityErrorCopyWith(
          _$GetPlaceActivityAvailabilityError value,
          $Res Function(_$GetPlaceActivityAvailabilityError) then) =
      __$$GetPlaceActivityAvailabilityErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPlaceActivityAvailabilityErrorCopyWithImpl<$Res>
    extends _$GetPlaceActivityAvailabilityCopyWithImpl<$Res,
        _$GetPlaceActivityAvailabilityError>
    implements _$$GetPlaceActivityAvailabilityErrorCopyWith<$Res> {
  __$$GetPlaceActivityAvailabilityErrorCopyWithImpl(
      _$GetPlaceActivityAvailabilityError _value,
      $Res Function(_$GetPlaceActivityAvailabilityError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPlaceActivityAvailabilityError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPlaceActivityAvailabilityError
    implements GetPlaceActivityAvailabilityError {
  const _$GetPlaceActivityAvailabilityError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPlaceActivityAvailability.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaceActivityAvailabilityError &&
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
  _$$GetPlaceActivityAvailabilityErrorCopyWith<
          _$GetPlaceActivityAvailabilityError>
      get copyWith => __$$GetPlaceActivityAvailabilityErrorCopyWithImpl<
          _$GetPlaceActivityAvailabilityError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int idactivity, String date, int partySize, ActionResult result)
        $default, {
    required TResult Function(List<PlaceActivityAvailability> availability)
        successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int idactivity, String date, int partySize, ActionResult result)?
        $default, {
    TResult? Function(List<PlaceActivityAvailability> availability)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int idactivity, String date, int partySize, ActionResult result)?
        $default, {
    TResult Function(List<PlaceActivityAvailability> availability)? successful,
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
    TResult Function(GetPlaceActivityAvailabilityStart value) $default, {
    required TResult Function(GetPlaceActivityAvailabilitySuccessful value)
        successful,
    required TResult Function(GetPlaceActivityAvailabilityError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPlaceActivityAvailabilityStart value)? $default, {
    TResult? Function(GetPlaceActivityAvailabilitySuccessful value)? successful,
    TResult? Function(GetPlaceActivityAvailabilityError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPlaceActivityAvailabilityStart value)? $default, {
    TResult Function(GetPlaceActivityAvailabilitySuccessful value)? successful,
    TResult Function(GetPlaceActivityAvailabilityError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPlaceActivityAvailabilityError
    implements GetPlaceActivityAvailability, ErrorAction {
  const factory GetPlaceActivityAvailabilityError(
          final Object error, final StackTrace stackTrace) =
      _$GetPlaceActivityAvailabilityError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetPlaceActivityAvailabilityErrorCopyWith<
          _$GetPlaceActivityAvailabilityError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeletePlaces {}

/// @nodoc
abstract class $DeletePlacesCopyWith<$Res> {
  factory $DeletePlacesCopyWith(
          DeletePlaces value, $Res Function(DeletePlaces) then) =
      _$DeletePlacesCopyWithImpl<$Res, DeletePlaces>;
}

/// @nodoc
class _$DeletePlacesCopyWithImpl<$Res, $Val extends DeletePlaces>
    implements $DeletePlacesCopyWith<$Res> {
  _$DeletePlacesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeletePlaces$CopyWith<$Res> {
  factory _$$DeletePlaces$CopyWith(
          _$DeletePlaces$ value, $Res Function(_$DeletePlaces$) then) =
      __$$DeletePlaces$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletePlaces$CopyWithImpl<$Res>
    extends _$DeletePlacesCopyWithImpl<$Res, _$DeletePlaces$>
    implements _$$DeletePlaces$CopyWith<$Res> {
  __$$DeletePlaces$CopyWithImpl(
      _$DeletePlaces$ _value, $Res Function(_$DeletePlaces$) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletePlaces$ implements DeletePlaces$ {
  const _$DeletePlaces$();

  @override
  String toString() {
    return 'DeletePlaces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletePlaces$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class DeletePlaces$ implements DeletePlaces {
  const factory DeletePlaces$() = _$DeletePlaces$;
}

/// @nodoc
mixin _$DeletePlaceActivities {}

/// @nodoc
abstract class $DeletePlaceActivitiesCopyWith<$Res> {
  factory $DeletePlaceActivitiesCopyWith(DeletePlaceActivities value,
          $Res Function(DeletePlaceActivities) then) =
      _$DeletePlaceActivitiesCopyWithImpl<$Res, DeletePlaceActivities>;
}

/// @nodoc
class _$DeletePlaceActivitiesCopyWithImpl<$Res,
        $Val extends DeletePlaceActivities>
    implements $DeletePlaceActivitiesCopyWith<$Res> {
  _$DeletePlaceActivitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeletePlaceActivities$CopyWith<$Res> {
  factory _$$DeletePlaceActivities$CopyWith(_$DeletePlaceActivities$ value,
          $Res Function(_$DeletePlaceActivities$) then) =
      __$$DeletePlaceActivities$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletePlaceActivities$CopyWithImpl<$Res>
    extends _$DeletePlaceActivitiesCopyWithImpl<$Res, _$DeletePlaceActivities$>
    implements _$$DeletePlaceActivities$CopyWith<$Res> {
  __$$DeletePlaceActivities$CopyWithImpl(_$DeletePlaceActivities$ _value,
      $Res Function(_$DeletePlaceActivities$) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletePlaceActivities$ implements DeletePlaceActivities$ {
  const _$DeletePlaceActivities$();

  @override
  String toString() {
    return 'DeletePlaceActivities()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletePlaceActivities$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class DeletePlaceActivities$ implements DeletePlaceActivities {
  const factory DeletePlaceActivities$() = _$DeletePlaceActivities$;
}

/// @nodoc
mixin _$CreateReservation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReservationStart value) $default, {
    required TResult Function(CreateReservationSuccessful value) successful,
    required TResult Function(CreateReservationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateReservationStart value)? $default, {
    TResult? Function(CreateReservationSuccessful value)? successful,
    TResult? Function(CreateReservationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReservationStart value)? $default, {
    TResult Function(CreateReservationSuccessful value)? successful,
    TResult Function(CreateReservationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReservationCopyWith<$Res> {
  factory $CreateReservationCopyWith(
          CreateReservation value, $Res Function(CreateReservation) then) =
      _$CreateReservationCopyWithImpl<$Res, CreateReservation>;
}

/// @nodoc
class _$CreateReservationCopyWithImpl<$Res, $Val extends CreateReservation>
    implements $CreateReservationCopyWith<$Res> {
  _$CreateReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateReservationStartCopyWith<$Res> {
  factory _$$CreateReservationStartCopyWith(_$CreateReservationStart value,
          $Res Function(_$CreateReservationStart) then) =
      __$$CreateReservationStartCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int idplace,
      int idactivity,
      int idactivitySeating,
      int iduser,
      String date,
      String hour,
      int party_size,
      ActionResult result});
}

/// @nodoc
class __$$CreateReservationStartCopyWithImpl<$Res>
    extends _$CreateReservationCopyWithImpl<$Res, _$CreateReservationStart>
    implements _$$CreateReservationStartCopyWith<$Res> {
  __$$CreateReservationStartCopyWithImpl(_$CreateReservationStart _value,
      $Res Function(_$CreateReservationStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idplace = null,
    Object? idactivity = null,
    Object? idactivitySeating = null,
    Object? iduser = null,
    Object? date = null,
    Object? hour = null,
    Object? party_size = null,
    Object? result = null,
  }) {
    return _then(_$CreateReservationStart(
      null == idplace
          ? _value.idplace
          : idplace // ignore: cast_nullable_to_non_nullable
              as int,
      null == idactivity
          ? _value.idactivity
          : idactivity // ignore: cast_nullable_to_non_nullable
              as int,
      null == idactivitySeating
          ? _value.idactivitySeating
          : idactivitySeating // ignore: cast_nullable_to_non_nullable
              as int,
      null == iduser
          ? _value.iduser
          : iduser // ignore: cast_nullable_to_non_nullable
              as int,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
      null == party_size
          ? _value.party_size
          : party_size // ignore: cast_nullable_to_non_nullable
              as int,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$CreateReservationStart implements CreateReservationStart {
  const _$CreateReservationStart(
      this.idplace,
      this.idactivity,
      this.idactivitySeating,
      this.iduser,
      this.date,
      this.hour,
      this.party_size,
      this.result);

  @override
  final int idplace;
  @override
  final int idactivity;
  @override
  final int idactivitySeating;
  @override
  final int iduser;
  @override
  final String date;
  @override
  final String hour;
  @override
  final int party_size;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'CreateReservation(idplace: $idplace, idactivity: $idactivity, idactivitySeating: $idactivitySeating, iduser: $iduser, date: $date, hour: $hour, party_size: $party_size, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReservationStart &&
            (identical(other.idplace, idplace) || other.idplace == idplace) &&
            (identical(other.idactivity, idactivity) ||
                other.idactivity == idactivity) &&
            (identical(other.idactivitySeating, idactivitySeating) ||
                other.idactivitySeating == idactivitySeating) &&
            (identical(other.iduser, iduser) || other.iduser == iduser) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.party_size, party_size) ||
                other.party_size == party_size) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idplace, idactivity,
      idactivitySeating, iduser, date, hour, party_size, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReservationStartCopyWith<_$CreateReservationStart> get copyWith =>
      __$$CreateReservationStartCopyWithImpl<_$CreateReservationStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(idplace, idactivity, idactivitySeating, iduser, date, hour,
        party_size, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(idplace, idactivity, idactivitySeating, iduser, date,
        hour, party_size, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(idplace, idactivity, idactivitySeating, iduser, date,
          hour, party_size, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReservationStart value) $default, {
    required TResult Function(CreateReservationSuccessful value) successful,
    required TResult Function(CreateReservationError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateReservationStart value)? $default, {
    TResult? Function(CreateReservationSuccessful value)? successful,
    TResult? Function(CreateReservationError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReservationStart value)? $default, {
    TResult Function(CreateReservationSuccessful value)? successful,
    TResult Function(CreateReservationError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateReservationStart implements CreateReservation {
  const factory CreateReservationStart(
      final int idplace,
      final int idactivity,
      final int idactivitySeating,
      final int iduser,
      final String date,
      final String hour,
      final int party_size,
      final ActionResult result) = _$CreateReservationStart;

  int get idplace;
  int get idactivity;
  int get idactivitySeating;
  int get iduser;
  String get date;
  String get hour;
  int get party_size;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$CreateReservationStartCopyWith<_$CreateReservationStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateReservationSuccessfulCopyWith<$Res> {
  factory _$$CreateReservationSuccessfulCopyWith(
          _$CreateReservationSuccessful value,
          $Res Function(_$CreateReservationSuccessful) then) =
      __$$CreateReservationSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateReservationSuccessfulCopyWithImpl<$Res>
    extends _$CreateReservationCopyWithImpl<$Res, _$CreateReservationSuccessful>
    implements _$$CreateReservationSuccessfulCopyWith<$Res> {
  __$$CreateReservationSuccessfulCopyWithImpl(
      _$CreateReservationSuccessful _value,
      $Res Function(_$CreateReservationSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateReservationSuccessful implements CreateReservationSuccessful {
  const _$CreateReservationSuccessful();

  @override
  String toString() {
    return 'CreateReservation.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReservationSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)?
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
    TResult Function(CreateReservationStart value) $default, {
    required TResult Function(CreateReservationSuccessful value) successful,
    required TResult Function(CreateReservationError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateReservationStart value)? $default, {
    TResult? Function(CreateReservationSuccessful value)? successful,
    TResult? Function(CreateReservationError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReservationStart value)? $default, {
    TResult Function(CreateReservationSuccessful value)? successful,
    TResult Function(CreateReservationError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateReservationSuccessful implements CreateReservation {
  const factory CreateReservationSuccessful() = _$CreateReservationSuccessful;
}

/// @nodoc
abstract class _$$CreateReservationErrorCopyWith<$Res> {
  factory _$$CreateReservationErrorCopyWith(_$CreateReservationError value,
          $Res Function(_$CreateReservationError) then) =
      __$$CreateReservationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateReservationErrorCopyWithImpl<$Res>
    extends _$CreateReservationCopyWithImpl<$Res, _$CreateReservationError>
    implements _$$CreateReservationErrorCopyWith<$Res> {
  __$$CreateReservationErrorCopyWithImpl(_$CreateReservationError _value,
      $Res Function(_$CreateReservationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreateReservationError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateReservationError implements CreateReservationError {
  const _$CreateReservationError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateReservation.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReservationError &&
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
  _$$CreateReservationErrorCopyWith<_$CreateReservationError> get copyWith =>
      __$$CreateReservationErrorCopyWithImpl<_$CreateReservationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)?
        $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int idplace,
            int idactivity,
            int idactivitySeating,
            int iduser,
            String date,
            String hour,
            int party_size,
            ActionResult result)?
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
    TResult Function(CreateReservationStart value) $default, {
    required TResult Function(CreateReservationSuccessful value) successful,
    required TResult Function(CreateReservationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateReservationStart value)? $default, {
    TResult? Function(CreateReservationSuccessful value)? successful,
    TResult? Function(CreateReservationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReservationStart value)? $default, {
    TResult Function(CreateReservationSuccessful value)? successful,
    TResult Function(CreateReservationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateReservationError
    implements CreateReservation, ErrorAction {
  const factory CreateReservationError(
          final Object error, final StackTrace stackTrace) =
      _$CreateReservationError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateReservationErrorCopyWith<_$CreateReservationError> get copyWith =>
      throw _privateConstructorUsedError;
}
