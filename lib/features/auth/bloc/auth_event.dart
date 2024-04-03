part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthLogin extends AuthEvent {
  final String email;
  final String password;

  AuthLogin({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class AuthRegister extends AuthEvent {
  final String email;
  final String password;
  final String name;

  AuthRegister(
      {required this.email, required this.password, required this.name});

  @override
  List<Object> get props => [email, password, name];
}
