part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class AuthenticationInitialState extends AuthenticationState {}

final class LoginLoadingState extends AuthenticationState {}

final class LoginSuccessState extends AuthenticationState {}

final class LoginErrorState extends AuthenticationState {
  final String errorMsg;

  const LoginErrorState({
    required this.errorMsg,
  }) : super();
}

final class SignupLoadingState extends AuthenticationState {}

final class SignupSuccessState extends AuthenticationState {}

final class SignupErrorState extends AuthenticationState {}

final class ResetPasswordLoadingState extends AuthenticationState {}

final class ResetPasswordSuccessState extends AuthenticationState {}

final class ResetPasswordErrorState extends AuthenticationState {}
