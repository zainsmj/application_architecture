import 'package:my_clean_architecture_sample/core/config/routes/app_navigation.dart';
import 'package:my_clean_architecture_sample/core/config/routes/app_routes.dart';
import 'package:my_clean_architecture_sample/dependency_injection.dart';
import 'package:my_clean_architecture_sample/modules/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  OnboardingBloc get onboardingBloc => sl();

  @override
  void initState() {
    onboardingBloc.add(GoToLoginEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: onboardingBloc,
        child: BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingLoadedState) {
              // AppNavigation.pushReplacementNamed(AppRoutes.login);
              // zain test below
              AppNavigation.pushReplacementNamed(AppRoutes.landing);
            }
          },
          builder: (context, state) {
            return const Center(
              child: Text("Loading..."),
            );
          },
        ),
      ),
    );
  }
}
