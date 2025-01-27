import 'package:flutter/material.dart';

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
