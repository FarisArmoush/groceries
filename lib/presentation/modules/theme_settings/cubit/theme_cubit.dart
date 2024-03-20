import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:groceries/utils/keys/storage_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

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
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedTheme = sharedPreferences.getString(StorageKeys.themeMode) ??
        ThemeMode.system.toString();
    final theme = ThemeMode.values.firstWhere(
      (value) => value.toString() == cachedTheme,
    );
    await setTheme(theme);
  }

  Future<void> _cacheTheme(ThemeMode theme) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(
      StorageKeys.themeMode,
      theme.toString(),
    );
  }
}
