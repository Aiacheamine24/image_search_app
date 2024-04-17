import 'package:flutter/material.dart';

final theme = ThemeData(
  // Define the default brightness and colors.
  colorScheme: const ColorScheme(
    primary: Color(0xFF5D5DFF), // 5D5DFF
    secondary: Color(0xFFF2F2F2), // #F2F2F2
    background: Color.fromARGB(255, 255, 255, 255), // #FFFFFF
    error: Color.fromARGB(255, 254, 99, 1), //#FE6301
    onPrimary: Color(0xFF000000), // Text black
    onSecondary: Color(0xFF434343), // Form Text #434343
    onSurface: Color(0xFF434343), // hint or backfround fields #F2F2F2
    onBackground: Color(0xFF8E8E8F), // Inactive icons #8E8E8F
    surface: Color.fromARGB(255, 90, 216, 90), // Borders
    brightness: Brightness.light,
    onError: Color.fromARGB(255, 254, 99, 1),
    // For success
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Color(0xFF000000),
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Color(0xFF000000),
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Color(0xFF000000),
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xFF000000),
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFF000000),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xFF000000),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFF8E8E8F),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Color(0xFFFFFFFF),
    ),
    toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFFFFFF),
      ),
    ).bodyMedium,
    titleTextStyle: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFFFFFF),
      ),
    ).titleLarge,
    backgroundColor: const Color(0xFF5D5DFF),
  ),
);
