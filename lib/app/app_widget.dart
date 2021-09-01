import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_routes.dart';
import 'package:flutter_application_1/constants/color.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Management Lesson',
      initialRoute: AppRoutes.root,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          primaryColor: AppColors.primaryColor,
          primaryColorDark: AppColors.primaryDarkColor,
          accentColor: AppColors.accentColor),
    ).modular();
  }
}
