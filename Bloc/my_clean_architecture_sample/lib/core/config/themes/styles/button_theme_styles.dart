import 'package:my_clean_architecture_sample/core/config/themes/app_colors.dart';
import 'package:my_clean_architecture_sample/core/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonThemeStyles {
  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(200, 40),
      textStyle: TextStyle(
        color: AppColors.white,
        fontFamily: AppConstants.fontFamily,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  static OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      minimumSize: const Size(200, 40),
      textStyle: TextStyle(
        color: AppColors.white,
        fontFamily: AppConstants.fontFamily,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(),
  );

  static FloatingActionButtonThemeData floatingActionButtonTheme = const FloatingActionButtonThemeData();
}
