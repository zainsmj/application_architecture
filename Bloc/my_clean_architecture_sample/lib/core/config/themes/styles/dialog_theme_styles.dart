import 'package:my_clean_architecture_sample/core/config/themes/app_colors.dart';
import 'package:my_clean_architecture_sample/core/config/themes/styles/text_theme_styles.dart';
import 'package:flutter/material.dart';

class DialogThemeStyles {
  static DialogTheme dialogTheme = const DialogTheme(
    backgroundColor: AppColors.dialogBackgroundColor,
    // double? elevation,
    // Color? shadowColor,
    // Color? surfaceTintColor,
    // ShapeBorder? shape,
    // AlignmentGeometry? alignment,
    // Color? iconColor,
    titleTextStyle: TextThemeStyles.titleLarge,
    contentTextStyle: TextThemeStyles.titleMedium,
    // EdgeInsetsGeometry? actionsPadding,
  );
}
