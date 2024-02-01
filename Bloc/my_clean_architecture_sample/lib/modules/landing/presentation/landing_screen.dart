import 'package:my_clean_architecture_sample/core/config/routes/app_navigation.dart';
import 'package:my_clean_architecture_sample/core/config/routes/app_routes.dart';
import 'package:my_clean_architecture_sample/core/widgets/buttons/elevated_button_widget.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => LandingScreenState();
}

class LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButtonWidget(
          buttonLabel: "Movies",
          onPressed: () => AppNavigation.pushNamed(AppRoutes.movieList),
        ),
      ),
    );
  }
}
