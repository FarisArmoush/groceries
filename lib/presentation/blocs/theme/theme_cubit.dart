import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit(this._sharedPreferences) : super(ThemeMode.system);

  final SharedPreferences _sharedPreferences;

  /// Sets the theme mode.
  ///
  /// The [theme] parameter specifies the desired theme mode.
  ///
  /// Persists the theme mode in [SharedPreferences].
  Future<void> setTheme(ThemeMode theme) async {
    emit(theme);
    await _cacheTheme(theme);
  }

  /// Loads the theme mode from [SharedPreferences] and sets it.
  ///
  /// If no theme mode is stored in [SharedPreferences], the default theme mode
  /// will be [ThemeMode.system].
  Future<void> loadTheme() async {
    final themeString = _sharedPreferences.getString('themeMode') ??
        ThemeMode.system.toString();
    final theme = ThemeMode.values.firstWhere(
      (value) => value.toString() == themeString,
    );
    await setTheme(theme);
  }

  Future<void> _cacheTheme(ThemeMode theme) async {
    await _sharedPreferences.setString('themeMode', theme.toString());
  }
}
