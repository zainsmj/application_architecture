part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthenticationEvent {
  final String email;
  final String password;

  const LoginEvent({
    required this.email,
    required this.password,
  });
}

class SignupEvent extends AuthenticationEvent {}

class ResetPasswordEvent extends AuthenticationEvent {}

class LogoutEvent extends AuthenticationEvent {}
