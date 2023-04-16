import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModeValue { light, dark, system }

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  Future<void> setTheme(ThemeModeValue theme) async {
    switch (theme) {
      case ThemeModeValue.light:
        emit(ThemeMode.light);
        break;
      case ThemeModeValue.dark:
        emit(ThemeMode.dark);
        break;
      case ThemeModeValue.system:
        emit(ThemeMode.system);
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('themeMode', theme.toString());
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeString =
        prefs.getString('themeMode') ?? ThemeModeValue.dark.toString();
    final theme = ThemeModeValue.values.firstWhere(
      (value) => value.toString() == themeString,
    );
    await setTheme(theme);
  }
}
