import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';
// part of 'package:royal_class/presentation/auth/bloc/auth_state.dart';


@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.inital()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
