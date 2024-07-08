import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:royal_class/domain/usecase/produt_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';
// part of 'package:royal_class/presentation/auth/bloc/auth_state.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Usecase usecase;
  AuthBloc({required this.usecase}) : super(AuthState.inital()) {
    on<_SingUp>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      if (event.confirmPassowrd == event.password) {
        final authResponse = await usecase.signUpUser(
            email: event.email, password: event.password);
        authResponse.fold(
          //failed creating new user
          (l) => emit(
              state.copyWith(onError: true, isLoading: false, isLoaded: true)),
          // Created new user
          (r) => emit(state.copyWith(
              isLoaded: true,
              isLoading: false,
              isLoggedIn: true,
              onError: false)),
        );
      }
    });

    // Signing In existing user
    on<_SingIn>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final authResponse = await usecase.signInUser(
          email: event.email, password: event.password);
      authResponse.fold(
        // Failed in signing in user
        (l) => emit(
            state.copyWith(onError: true, isLoading: false, isLoaded: true)),
        // Success in signing in user
        (r) => emit(state.copyWith(
            isLoaded: true,
            isLoading: false,
            isLoggedIn: true,
            onError: false)),
      );
    });
  }
}
