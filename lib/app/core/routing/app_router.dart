// External imports

// Define the routes
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_motor_search_app/app/features/auth/presentation/auth_screen.dart';

final routerApp = GoRouter(
  initialLocation: AuthScreen.routeName,
  routes: [
    GoRoute(
      path: AuthScreen.routeName,
      pageBuilder: (context, state) => const MaterialPage(child: AuthScreen()),
    ),
  ],
);
