import 'package:flutter/material.dart';
import 'package:image_motor_search_app/app/core/constants/theme.dart';
import 'package:image_motor_search_app/app/core/routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerApp,
      routeInformationParser: null,
      routeInformationProvider: null,
      theme: theme,
    );
  }
}
