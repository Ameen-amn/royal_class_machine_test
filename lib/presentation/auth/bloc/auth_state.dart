part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoaded,
    @Default(false) bool isLoading,
    @Default(false) bool isLoggedIn,
    @Default(false) bool onError,
  }) = _AuthState;
  factory AuthState.inital() => const AuthState();
}
