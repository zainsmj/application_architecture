import 'package:flutter/material.dart';

class AppColors {
  /// Primary colors.
  static const Color black = Colors.black;
  static const Color red = Color(0xFFE00800);
  static const Color orange = Color(0xFFFD9731);
  static const Color begie = Color(0xFFE6E6DC);
  static const Color camel = Color(0xFFDCD0C4);
  static const Color white = Colors.white;
  static const Color bgColor = Color(0xFFFBF8F5);
  static const Color transparent = Colors.transparent;

  ///Red Color
  static const Color red10 = Color(0xFFFDF3F2);
  static const Color red20 = Color(0xFFF3DEDD);
  static const Color red40 = Color(0xFFF1C6C4);
  static const Color red60 = Color(0xFFEFAEAC);
  static const Color red80 = Color(0xFFEA7E7A);
  static const Color red90 = Color(0xFFE43731);
  static const Color red800 = Color(0xFFE00800);
  static const Color red100 = red;

  ///Grey Color
  static const Color greyExtra = Color(0xFFF8F9FA);
  static const Color grey10 = Color(0xFFF2F2F2);
  static const Color grey20 = Color(0xFFE6E6E6);
  static const Color grey30 = Color(0xFFCCCCCC);
  static const Color grey40 = Color(0xFFB2B2B2);
  static const Color grey50 = Color(0xFFBFBFBF);
  static const Color grey60 = Color(0xFF919191);
  static const Color grey70 = Color(0xFF848484);
  static const Color grey80 = Color(0xFF4F4F4F);
  static const Color grey90 = Color(0xFF393939);
  static const Color grey100 = Color(0xFF232323);
  static const Color grey848789 = Color(0xFF848789);
  static const Color grey4D4D4D = Color(0xFF4D4D4D);

  ///Orange Color
  static const Color orange10 = Color(0xFFFFF9F2);
  static const Color orange20 = Color(0xFFF6EADD);
  static const Color orange40 = Color(0xFFF7DEC4);
  static const Color orange60 = Color(0xFFF9C693);
  static const Color orange80 = Color(0xFFFBAF62);
  static const Color orange90 = orange;
  static const Color orange100 = Color(0xFFFF8000);

  /// Black Color
  static const Color black50 = Color(0xFF0F1121);
  static const Color blackNeutral = Color(0xFF040207);
  static const Color m3 = Color(0xFF1D1B20);
  static const Color m3Variant = Color(0xFF49454F);

  ///Beij Color
  static const Color beij10 = Colors.white;
  static const Color beij20 = Color(0xFFF8F8F5);
  static const Color beij40 = Color(0xFFF2F2ED);
  static const Color beij60 = Color(0xFFEEEEE6);
  static const Color beij80 = Color(0xFFE8E8DF);
  static const Color beij90 = Color(0xFFE6E6DC);
  static const Color beij91 = Color(0xFFF1ECE7);
  static const Color beij100 = beij90;

  ///Camel Color
  static const Color camel10 = Color(0xFFF8F6F3);
  static const Color camel20 = Color(0xFFF4F1ED);
  static const Color camel30 = Color(0xFFF1ECE7);
  static const Color camel40 = Color(0xFFEDE7E2);
  static const Color camel60 = Color(0xFFE6DED6);
  static const Color camel80 = Color(0xFFDFD5CA);
  static const Color camel90 = Color(0xFFDCD0C4);
  static const Color camel100 = camel90;

  ///Warning
  static const Color alertYellow20 = Color(0xFFFDF8EA);
  static const Color alertYellow50 = Color(0xFFFCF2D6);
  static const Color alertYellow100 = Color(0xFFFFCC00);

  ///Success- Positive
  static const Color successGreen20 = Color(0xFFEEF4F0);
  static const Color successGreen50 = Color(0xFFDEE9E2);
  static const Color successGreen100 = Color(0xFF0C7B33);

  ///Failure- Negative
  static const Color errorRed20 = Color(0xFFFDE8E8);
  static const Color errorRed50 = Color(0xFFFCD1D1);
  static const Color errorRed100 = Color(0xFFBE1218);

  ///Text colors
  static const Color textGrey90Heading = Color(0xFF393939);
  static const Color textGrey70Paragraph = Color(0xFF848484);
  static const Color textGrey30Disable = Color(0xFFB2B2B2);
  static const Color textRed = Color(0xFFE00800);
  static const Color textWhite = Colors.white;
  static const Color textBlack = black;
  static const Color textDarkNormal = Color(0xFF181B22);
  static const Color black353738 = Color(0xFF353738);
  static const Color textWhiteDarker = Color(0xFF515151);

  /// for input decoration
  static const Color descriptionTextColor = Color(0xFF515151);
  static const Color textFieldLabelColor = grey80;
  static const Color textFieldBackgroundColor = Colors.transparent;
  static const Color textFieldFocusedBorderColor = grey90;
  static const Color textFieldUnFocusedBorderColor = grey80;
  static const Color textFieldDisabledBorderColor = grey30;
  static const Color underlinedTextColor = grey90;
  static const Color errorColor = errorRed100;
  static const Color successColor = successGreen100;

  static const Color roundButtonBorderColor = Color(0xff656565);

  /// primary Material Color
  static const MaterialColor primaryMaterialColor = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Colors.black,
      100: Colors.black,
      200: Colors.black,
      300: Colors.black,
      400: Colors.black,
      500: Colors.black,
      600: Colors.black,
      700: Colors.black,
      800: Colors.black,
      900: Colors.black,
    },
  );

  // OLD - FOR THEME
  // static const Color black = Color.fromRGBO(0, 0, 0, 1);
  // static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color commonOrange = Colors.orange;
  static const Color lightGrey = Color(0xFFF2F2F2);
  static const Color darkGrey = Color(0xFFE5E5E5);

  static const Color canvasColor = Color.fromRGBO(255, 250, 250, 1);
  static const Color cardColor = white;
  static const Color colorSchemeSeed = Color.fromRGBO(0, 133, 122, 1);
  static const Color dialogBackgroundColor = white;
  static const Color disabledColor = Color.fromRGBO(0, 133, 122, 1);
  static const Color dividerColor = Colors.grey;
  static const Color focusColor = Color.fromRGBO(0, 133, 122, 1);
  static const Color highlightColor = Color.fromRGBO(0, 133, 122, 1);
  static const Color hintColor = Color.fromRGBO(0, 133, 122, 1);
  static const Color hoverColor = Color.fromRGBO(0, 133, 122, 1);
  static const Color indicatorColor = Colors.lime;
  static const Color primaryColorDark = Color.fromRGBO(0, 133, 122, 1);
  static const Color primaryColorLight = Color.fromRGBO(0, 133, 122, 1);
  static const Color scaffoldBackgroundColor = camel10;
  static const Color secondaryHeaderColor = Color.fromRGBO(0, 133, 122, 1);
  static const Color shadowColor = Color.fromRGBO(0, 133, 122, 1);
  static const Color splashColor = Color.fromRGBO(0, 133, 122, 1);
  static const Color unselectedWidgetColor = Color.fromRGBO(243, 160, 32, 1);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color backgroundColor = Colors.grey;
  static const Color onBackgroundColor = white;

  // static const Color errorColor = Colors.red;
  static const Color validationColor = Colors.red;
  static const Color onErrorColor = white;
  static const Color primaryColor = Color.fromRGBO(243, 160, 32, 1);
  static const Color onPrimaryColor = white;
  static const Color secondaryColor = Color.fromRGBO(243, 160, 32, 1);
  static const Color onSecondaryColor = white;
  static const Color surfaceColor = white;
  static const Color onSurfaceColor = Colors.red;

  static const Color inputTextColor = black;
  static Color disabledButtonBgColor =
      const Color.fromRGBO(243, 160, 32, 1).withOpacity(0.4);
  static const Color textButtonTextColor = Color.fromRGBO(243, 160, 32, 1);

  static const Color bottomNavActiveColor = Color.fromRGBO(243, 146, 0, 1);
  static const Color bottomNavInActiveColor = Color.fromRGBO(144, 149, 155, 1);

  static const Color chartCurrYearColor = Color.fromRGBO(149, 193, 31, 1);
  static const Color chartPrevYearColor = Color.fromRGBO(2, 143, 207, 1);
  static const Color chartCurrYearPointColor = Color.fromRGBO(243, 146, 0, 1);
  static const Color chartPrevYearPointColor = black;

  static const Color listTitleTextColor = Color.fromRGBO(45, 43, 42, 1);

  static const Color successSnackbarColor = Color.fromRGBO(45, 43, 42, 1);
  static const Color errorSnackbarColor = Color.fromRGBO(45, 43, 42, 1);
  static const Color warningSnackbarColor = Color.fromRGBO(45, 43, 42, 1);

  static const greenSuccess = Color(0xFF0C7B33);

  static const greyShadow = Color(0xff444343);
}
