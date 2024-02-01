import 'package:my_clean_architecture_sample/core/config/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppNavigation {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get currentContext => navigatorKey.currentState!.overlay!.context;

  static BuildContext get globalContext => navigatorKey.currentContext!;

  static Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future<dynamic> pushReplacementNamed(
    String routeName, {
    Object? arguments,
  }) {
    return navigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName(AppRoutes.initial),
    );
  }

  static Future<dynamic> push(MaterialPageRoute route) {
    return navigatorKey.currentState!.push(
      route,
    );
  }

  static void popUntil() => navigatorKey.currentState!.popUntil((route) => route.isFirst);

  static void pop({List? args}) {
    return navigatorKey.currentState!.pop(args);
  }

  static bool canPop(BuildContext context) {
    return ModalRoute.of(context)!.canPop;
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text(
            message,
          ),
        ),
      ),
    );
  }
}
