import 'package:my_clean_architecture_sample/core/config/routes/app_routes.dart';
import 'package:my_clean_architecture_sample/core/utils/constants/app_constants.dart';
import 'package:my_clean_architecture_sample/modules/authentication/presentation/screens/login_screen.dart';
import 'package:my_clean_architecture_sample/modules/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:my_clean_architecture_sample/modules/landing/presentation/landing_screen.dart';
import 'package:my_clean_architecture_sample/modules/movie/presentation/screens/movie_list_screen.dart';
import 'package:my_clean_architecture_sample/modules/onboarding/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // var args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.initial:
        return _screenRoute(
          screen: const SplashScreen(),
        );

      case AppRoutes.login:
        return _screenRoute(
          screen: const LoginScreen(),
        );

      case AppRoutes.landing:
        return _screenRoute(
          screen: const LandingScreen(),
        );

      case AppRoutes.dashboard:
        return _screenRoute(
          screen: const DashboardScreen(),
        );

      case AppRoutes.movieList:
        return _screenRoute(
          screen: const MovieListScreen(),
        );

      // case AppRoutes.cart:
      //   return _screenRoute(
      //     screen: CartMainScreen(
      //       arguments: args as ScreenArguments,
      //     ),
      //   );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _screenRoute({
    Widget? screen,
    RouteSettings? settings,
  }) {
    return MaterialPageRoute(builder: (context) => screen!, settings: settings);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text(AppConstants.appName),
          ),
          body: const Center(
            child: Text("Try again."),
          ),
        );
      },
    );
  }
}
