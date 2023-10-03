import 'package:flutter/material.dart';
import 'package:flutter_utilsx/context/context.dart';
import 'package:get/get.dart';
import 'package:meal_task/values/custom_theme.dart';
import 'package:meal_task/values/routes.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomThme.themeData,
      initialRoute: '/',
      navigatorKey: AppCntx.navigatorKey,
      getPages: Routes.routesList,
    );
  }
}
