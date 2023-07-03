import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:groceries/utils/shared_preferences_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModeValue { light, dark, system }

class ThemeCubit extends Cubit<ThemeMode>
    implements SharedPreferencesUtil<ThemeModeValue> {
  ThemeCubit() : super(ThemeMode.system);

  /// Sets the theme mode.
  ///
  /// The [theme] parameter specifies the desired theme mode.
  ///
  /// Persists the theme mode in [SharedPreferences].
  @override
  Future<void> set(ThemeModeValue theme) async {
    switch (theme) {
      case ThemeModeValue.light:
        emit(ThemeMode.light);
      case ThemeModeValue.dark:
        emit(ThemeMode.dark);
      case ThemeModeValue.system:
        emit(ThemeMode.system);
    }
    await cache(theme);
  }

  /// Loads the theme mode from [SharedPreferences] and sets it.
  ///
  /// If no theme mode is stored in [SharedPreferences], the default theme mode
  /// will be [ThemeModeValue.system].
  @override
  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final themeString =
        prefs.getString('themeMode') ?? ThemeModeValue.system.toString();
    final theme = ThemeModeValue.values.firstWhere(
      (value) => value.toString() == themeString,
    );
    await set(theme);
  }

  @override
  Future<void> cache(ThemeModeValue theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('themeMode', theme.toString());
  }
}
