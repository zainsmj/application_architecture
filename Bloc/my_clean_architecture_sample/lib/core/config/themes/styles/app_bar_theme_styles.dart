import 'package:my_clean_architecture_sample/core/config/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarThemeStyles {
  static final AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: AppColors.camel10,
    foregroundColor: AppColors.grey100,
    elevation: 0,
    titleTextStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: AppColors.textBlack,
      height: 28 / 20,
    ),
    shadowColor: Colors.black.withOpacity(0.15),
  );
}
