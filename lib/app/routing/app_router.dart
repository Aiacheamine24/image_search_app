// External imports

// Define the routes
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_motor_search_app/app/features/auth/login/login_screen.dart';
import 'package:image_motor_search_app/app/features/auth/register/register_screen.dart';

final routerApp = GoRouter(
  initialLocation: LoginScreen.routeName,
  routes: [
    GoRoute(
      path: LoginScreen.routeName,
      pageBuilder: (context, state) => const MaterialPage(child: LoginScreen()),
    ),
    GoRoute(
      path: RegisterScreen.routeName,
      pageBuilder: (context, state) =>
          const MaterialPage(child: RegisterScreen()),
    ),
  ],
);
