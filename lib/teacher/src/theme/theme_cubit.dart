import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ThemesCubit extends Cubit<ThemeMode> {
  ThemesCubit() : super(ThemeMode.light);

  Future<void> loadSettings() async {
    // final prefs = await SharedPreferences.getInstance();
    // final themeString = prefs.getString('themeMode') ?? 'light';
    // emit(themeString == 'dark' ? ThemeMode.dark : ThemeMode.light);
    emit(ThemeMode.light);
  }

  void updateThemeMode(ThemeMode themeMode) {
    state != themeMode ? emit(themeMode) : null;
    // final prefs = await SharedPreferences.getInstance();
    // await prefs.setString('themeMode', themeMode == ThemeMode.dark ? 'dark' : 'light');
  }
}
