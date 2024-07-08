part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = _Started;
  const factory AuthEvent.signInUser(
      {required String email, required String password}) = _SingIn;
  const factory AuthEvent.signUpUser(
      {required String email,
      required String password,
      required String confirmPassowrd}) = _SingUp;
}
