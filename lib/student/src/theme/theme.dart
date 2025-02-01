import 'package:flutter/material.dart';

class AppColors {
  static const primaryGreen = Color.fromRGBO(88, 135, 96, 1);
  static const backgroundColor = Color(0xFFFFF9E9);
}

class Themes {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[100],
      canvasColor: Colors.grey[100],
      colorScheme: const ColorScheme.light().copyWith(
        primary: Color(0xffd6ba85),
        secondary: Colors.grey[300],
      ));

  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[900],
      canvasColor: Colors.grey[900],
      colorScheme: const ColorScheme.dark().copyWith(
        primary: Color(0xffd6ba85),
        secondary: Colors.black38,
      ));
}

final appTheme = ThemeData(
  fontFamily: 'cairo',
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  appBarTheme: const AppBarTheme(
    elevation: 10,
    backgroundColor: AppColors.primaryGreen,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[50],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
  ),
);
