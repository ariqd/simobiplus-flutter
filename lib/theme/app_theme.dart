import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData = ThemeData(
    primarySwatch: Colors.pink,
    primaryColor: Colors.pink.shade400,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink.shade400,
        textStyle: const TextStyle(fontSize: 18),
        disabledBackgroundColor: Colors.pink.shade400.withOpacity(0.6),
        disabledForegroundColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.pink.shade400,
        textStyle: const TextStyle(fontSize: 18),
      ),
    ),
  );
}
