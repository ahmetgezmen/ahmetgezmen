import 'package:ahmetgezmen/constant/constant.dart';
import 'package:ahmetgezmen/core/route/routes.dart';
import 'package:ahmetgezmen/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: BaseConstant.webTitle,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: RouteConstant.home,
      routes: AppRoutes.routes,
    );
  }
}
