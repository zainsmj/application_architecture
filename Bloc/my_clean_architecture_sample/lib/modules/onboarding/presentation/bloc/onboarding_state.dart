part of 'onboarding_bloc.dart';

sealed class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

final class OnboardingInitialState extends OnboardingState {}

final class OnboardingLoadedState extends OnboardingState {}
