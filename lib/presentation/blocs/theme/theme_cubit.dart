import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModeValue { light, dark, system }

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  /// Sets the theme mode.
  ///
  /// The [theme] parameter specifies the desired theme mode.
  ///
  /// - [ThemeModeValue.light]: Sets the theme mode to light.
  /// - [ThemeModeValue.dark]: Sets the theme mode to dark.
  /// - [ThemeModeValue.system]: Sets the theme mode to follow the system theme.
  ///
  /// Persists the theme mode in [SharedPreferences].
  Future<void> setTheme(ThemeModeValue theme) async {
    switch (theme) {
      case ThemeModeValue.light:
        emit(ThemeMode.light);
      case ThemeModeValue.dark:
        emit(ThemeMode.dark);
      case ThemeModeValue.system:
        emit(ThemeMode.system);
    }
    await _setThemeInSharedPrefs(theme);
  }

  /// Loads the theme mode from [SharedPreferences] and sets it.
  ///
  /// If no theme mode is stored in [SharedPreferences], the default theme mode
  /// will be [ThemeModeValue.system].
  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeString =
        prefs.getString('themeMode') ?? ThemeModeValue.system.toString();
    final theme = ThemeModeValue.values.firstWhere(
      (value) => value.toString() == themeString,
    );
    await setTheme(theme);
  }

  Future<void> _setThemeInSharedPrefs(ThemeModeValue theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('themeMode', theme.toString());
  }
}
