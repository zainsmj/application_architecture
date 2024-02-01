import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitialState()) {
    // on<OnboardingEvent>(_goToLoginScreen);
    on<GoToLoginEvent>(_goToLoginScreen);
  }

  FutureOr<void> _goToLoginScreen(
    GoToLoginEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    Future.delayed(const Duration(seconds: 2));

    emit(
      OnboardingLoadedState(),
    );
  }
}
