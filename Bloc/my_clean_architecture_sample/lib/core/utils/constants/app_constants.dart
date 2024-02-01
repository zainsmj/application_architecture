import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static const String appName = "Flutter Clean Bloc";
  static const String appVersion = "1.0.0";

  // ASSETS
  static const String assetIcons = "assets/images/icons/";
  static const String assetLogo = "assets/images/logo/";
  static const String assetImages = "assets/images/";
  static const String assetVideos = "assets/videos/";
  static const String assetTranslations = "assets/translations";

  // FLAVOURS
  static const String envDev = "DEV";
  static const String envQa = "QA";
  static const String envUat = "UAT";
  static const String envPreProd = "PREPROD";
  static const String envProd = "PROD";

  // API CONSTANTS
  static const String baseUrl = "https://api.sampleapis.com";
  static const int successCode = 200;
  static const int errorCode = 500;
  static const String successMsg = "OK";
  static const String failureMsg = "FAILURE";

  static dynamic requestHeaders = {
    'Content-Type': 'application/json',
    'Charset': 'utf-8',
  };

  // SOCIAL MEDIA
  static const String facebookUrl = "";
  static const String twitterUrl = "";
  static const String termsConditionsUrl = "";
  static const String privacyPolicyUrl = "";

  // THEME CONSTANTS
  static const String fontFamily = "Roboto";
  static const String seconedFontFamily = "Montserrat";
  static double screenWidth = 360.0;
  static double screenHeight = 690.0;
  static double screenContentHorizontalPadding = 26.w;
  static double screenContentVerticalPadding = 20.h;
  static double formFieldSpacing = 5.h;
  static double borderRadius = 20.0;

  // FORM GLOBALS
  static final globalFormKey = GlobalKey<FormState>();
}
