import 'package:flutter/material.dart';
import 'package:meal_task/values/custom_color_scheme.dart';

 class CustomThme{
CustomThme._();
 static ThemeData get themeData => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: CustomColor.primary,
    brightness: Brightness.light,
      primary: CustomColor.primary,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: CustomColor.primary,
  );
}