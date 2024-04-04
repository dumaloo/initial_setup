import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:initial_setup/features/auth/domain/auth_repository.dart';
import 'package:logger/logger.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(AuthInitialState()) {
    on<AuthLoginEvent>((event, emit) async {
      try {
        await _authRepository.signIn(event.email, event.password);
        emit(AuthSuccessState(uemail: event.email));
      } catch (e) {
        emit(AuthErrorState(message: e.toString()));
        Logger().e('Failed to sign in: $e');
      }
    });

    on<AuthRegisterEvent>((event, emit) async {
      try {
        await _authRepository.signUp(event.name, event.email, event.password);
        emit(AuthSuccessState(uemail: event.email));
      } catch (e) {
        emit(AuthErrorState(message: e.toString()));
        Logger().e('Failed to sign up: $e');
      }
    });
  }
}
