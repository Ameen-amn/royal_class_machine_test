// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(
            String email, String password, String confirmPassowrd)
        signUpUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password, String confirmPassowrd)?
        signUpUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password, String confirmPassowrd)?
        signUpUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_SingIn value) signInUser,
    required TResult Function(_SingUp value) signUpUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_SingIn value)? signInUser,
    TResult? Function(_SingUp value)? signUpUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_SingIn value)? signInUser,
    TResult Function(_SingUp value)? signUpUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(
            String email, String password, String confirmPassowrd)
        signUpUser,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password, String confirmPassowrd)?
        signUpUser,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password, String confirmPassowrd)?
        signUpUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_SingIn value) signInUser,
    required TResult Function(_SingUp value) signUpUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_SingIn value)? signInUser,
    TResult? Function(_SingUp value)? signUpUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_SingIn value)? signInUser,
    TResult Function(_SingUp value)? signUpUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SingInImplCopyWith<$Res> {
  factory _$$SingInImplCopyWith(
          _$SingInImpl value, $Res Function(_$SingInImpl) then) =
      __$$SingInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SingInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SingInImpl>
    implements _$$SingInImplCopyWith<$Res> {
  __$$SingInImplCopyWithImpl(
      _$SingInImpl _value, $Res Function(_$SingInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SingInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingInImpl implements _SingIn {
  const _$SingInImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingInImplCopyWith<_$SingInImpl> get copyWith =>
      __$$SingInImplCopyWithImpl<_$SingInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(
            String email, String password, String confirmPassowrd)
        signUpUser,
  }) {
    return signInUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password, String confirmPassowrd)?
        signUpUser,
  }) {
    return signInUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password, String confirmPassowrd)?
        signUpUser,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_SingIn value) signInUser,
    required TResult Function(_SingUp value) signUpUser,
  }) {
    return signInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_SingIn value)? signInUser,
    TResult? Function(_SingUp value)? signUpUser,
  }) {
    return signInUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_SingIn value)? signInUser,
    TResult Function(_SingUp value)? signUpUser,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(this);
    }
    return orElse();
  }
}

abstract class _SingIn implements AuthEvent {
  const factory _SingIn(
      {required final String email,
      required final String password}) = _$SingInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SingInImplCopyWith<_$SingInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingUpImplCopyWith<$Res> {
  factory _$$SingUpImplCopyWith(
          _$SingUpImpl value, $Res Function(_$SingUpImpl) then) =
      __$$SingUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String confirmPassowrd});
}

/// @nodoc
class __$$SingUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SingUpImpl>
    implements _$$SingUpImplCopyWith<$Res> {
  __$$SingUpImplCopyWithImpl(
      _$SingUpImpl _value, $Res Function(_$SingUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassowrd = null,
  }) {
    return _then(_$SingUpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassowrd: null == confirmPassowrd
          ? _value.confirmPassowrd
          : confirmPassowrd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingUpImpl implements _SingUp {
  const _$SingUpImpl(
      {required this.email,
      required this.password,
      required this.confirmPassowrd});

  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassowrd;

  @override
  String toString() {
    return 'AuthEvent.signUpUser(email: $email, password: $password, confirmPassowrd: $confirmPassowrd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassowrd, confirmPassowrd) ||
                other.confirmPassowrd == confirmPassowrd));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, confirmPassowrd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingUpImplCopyWith<_$SingUpImpl> get copyWith =>
      __$$SingUpImplCopyWithImpl<_$SingUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, String password) signInUser,
    required TResult Function(
            String email, String password, String confirmPassowrd)
        signUpUser,
  }) {
    return signUpUser(email, password, confirmPassowrd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password, String confirmPassowrd)?
        signUpUser,
  }) {
    return signUpUser?.call(email, password, confirmPassowrd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password, String confirmPassowrd)?
        signUpUser,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(email, password, confirmPassowrd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) initial,
    required TResult Function(_SingIn value) signInUser,
    required TResult Function(_SingUp value) signUpUser,
  }) {
    return signUpUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? initial,
    TResult? Function(_SingIn value)? signInUser,
    TResult? Function(_SingUp value)? signUpUser,
  }) {
    return signUpUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? initial,
    TResult Function(_SingIn value)? signInUser,
    TResult Function(_SingUp value)? signUpUser,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(this);
    }
    return orElse();
  }
}

abstract class _SingUp implements AuthEvent {
  const factory _SingUp(
      {required final String email,
      required final String password,
      required final String confirmPassowrd}) = _$SingUpImpl;

  String get email;
  String get password;
  String get confirmPassowrd;
  @JsonKey(ignore: true)
  _$$SingUpImplCopyWith<_$SingUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get onError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool isLoaded, bool isLoading, bool isLoggedIn, bool onError});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? isLoggedIn = null,
    Object? onError = null,
  }) {
    return _then(_value.copyWith(
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoaded, bool isLoading, bool isLoggedIn, bool onError});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? isLoggedIn = null,
    Object? onError = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.isLoaded = false,
      this.isLoading = false,
      this.isLoggedIn = false,
      this.onError = false});

  @override
  @JsonKey()
  final bool isLoaded;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoggedIn;
  @override
  @JsonKey()
  final bool onError;

  @override
  String toString() {
    return 'AuthState(isLoaded: $isLoaded, isLoading: $isLoading, isLoggedIn: $isLoggedIn, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoaded, isLoading, isLoggedIn, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isLoaded,
      final bool isLoading,
      final bool isLoggedIn,
      final bool onError}) = _$AuthStateImpl;

  @override
  bool get isLoaded;
  @override
  bool get isLoading;
  @override
  bool get isLoggedIn;
  @override
  bool get onError;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
