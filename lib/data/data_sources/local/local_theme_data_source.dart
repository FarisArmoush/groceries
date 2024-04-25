import 'package:flutter/material.dart';
import 'package:groceries/data/data_sources/interfaces/theme_data_source.dart';
import 'package:groceries/utils/keys/storage_keys.dart';
import 'package:groceries/utils/logger.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@named
@Injectable(as: ThemeDataSource)
class LocalThemeDataSource implements ThemeDataSource {
  @override
  Future<ThemeMode> getTheme() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedTheme = sharedPreferences.getString(StorageKeys.themeMode) ??
        ThemeMode.system.toString();
    final theme = ThemeMode.values.firstWhere(
      (value) => value.toString() == cachedTheme,
    );
    logger.info('Got theme($theme)');
    return theme;
  }

  @override
  Future<void> cacheTheme(ThemeMode theme) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(StorageKeys.themeMode, theme.toString());
    logger.info('Cached $theme');
  }
}
