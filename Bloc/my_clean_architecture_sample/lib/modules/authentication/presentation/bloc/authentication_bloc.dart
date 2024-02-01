import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitialState()) {
    on<LoginEvent>(_loginEvent);
    on<SignupEvent>(_signupEvent);
    on<ResetPasswordEvent>(_resetPasswordEvent);
    on<LogoutEvent>(_logoutEvent);
  }

  FutureOr<void> _loginEvent(
    LoginEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(LoginLoadingState());

    if (event.email == "zain@gmail.com" && event.password == "123") {
      emit(LoginSuccessState());
    } else {
      emit(
        const LoginErrorState(
          errorMsg: "Email or Password is incorrect",
        ),
      );
    }
  }

  FutureOr<void> _signupEvent(
    SignupEvent event,
    Emitter<AuthenticationState> emit,
  ) async {}

  FutureOr<void> _resetPasswordEvent(
    ResetPasswordEvent event,
    Emitter<AuthenticationState> emit,
  ) async {}

  FutureOr<void> _logoutEvent(
    LogoutEvent event,
    Emitter<AuthenticationState> emit,
  ) async {}
}
