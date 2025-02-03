import 'package:flutter/material.dart';

class AppColors {
  static const primaryGreen = Color.fromRGBO(88, 135, 96, 1);
  static const backgroundColor = Color(0xFFFFF9E9);
}

final appTheme = ThemeData(
  primaryColor: Color.fromRGBO(88, 135, 96, 1),
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
