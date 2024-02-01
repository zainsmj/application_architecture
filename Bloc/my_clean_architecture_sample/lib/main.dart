import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_clean_architecture_sample/core/config/routes/app_navigation.dart';
import 'package:my_clean_architecture_sample/core/config/routes/app_routes.dart';
import 'package:my_clean_architecture_sample/core/config/routes/route_generator.dart';
import 'package:my_clean_architecture_sample/core/config/themes/app_themes.dart';
import 'package:my_clean_architecture_sample/core/utils/constants/app_constants.dart';
import 'package:my_clean_architecture_sample/dependency_injection.dart' as di;

void main() async {
  // await ScreenUtil.ensureScreenSize();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        AppConstants.screenWidth,
        AppConstants.screenHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: AppConstants.appName,
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          initialRoute: AppRoutes.initial,
          navigatorKey: AppNavigation.navigatorKey,
          onGenerateRoute: RouteGenerator.generateRoute,
          // localizationsDelegates: context.localizationDelegates,
          // supportedLocales: context.supportedLocales,
          // locale: context.locale,
        );
      },
    );
  }
}
