import 'package:my_clean_architecture_sample/core/config/routes/app_navigation.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoaderWidget {
  // static void hideMiniLoader() => AppNavigation.pop();

  static SizedBox showWidgetLoader() => SizedBox(
        child: LoadingAnimationWidget.fourRotatingDots(
          color: Colors.green,
          size: 20,
        ),
      );

  static void hideScreenLoader() => AppNavigation.pop();

  static Center showScreenLoader() => Center(
        child: Container(
          child: LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.green,
            size: 50,
          ),
        ),
      );
}
