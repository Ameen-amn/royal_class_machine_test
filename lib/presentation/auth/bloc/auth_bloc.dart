import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:royal_class/domain/usecase/produt_usecase.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';
// part of 'package:royal_class/presentation/auth/bloc/auth_state.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Usecase usecase;
  AuthBloc({required this.usecase}) : super(AuthState.inital()) {
    on<_SingUp>((event, emit) {
      emit(state.copyWith(isLoading: true));
      
      usecase.signUpUser(email: event.email, password: event.password);
    });
  }
}
