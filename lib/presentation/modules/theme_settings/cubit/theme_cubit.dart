import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:groceries/domain/use_cases/cache_theme_use_case.dart';
import 'package:groceries/domain/use_cases/fetch_theme_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit(
    this._fetchThemeUseCase,
    this._cacheThemeUseCase,
  ) : super(ThemeMode.system);

  final FetchThemeUseCase _fetchThemeUseCase;
  final CacheThemeUseCase _cacheThemeUseCase;

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
    final theme = await _fetchThemeUseCase();
    await setTheme(theme);
  }

  Future<void> _cacheTheme(ThemeMode theme) => _cacheThemeUseCase(theme);
}
