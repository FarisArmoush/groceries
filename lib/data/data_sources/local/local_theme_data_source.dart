import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/data_sources/interfaces/theme_data_source.dart';
import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/data/services/cache/shared_preferences_cache_service.dart';
import 'package:groceries/shared/logger.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: ThemeDataSource)
class LocalThemeDataSource implements ThemeDataSource {
  const LocalThemeDataSource(
    @Named.from(SharedPreferencesCacheService) this._cacheService,
  );

  final CacheService _cacheService;
  @override
  Future<ThemeMode> getTheme() async {
    final cachedTheme = await _cacheService.read<String>('themeMode');
    final theme = ThemeMode.values.firstWhereOrNull(
      (element) => element.toString() == cachedTheme,
    );
    logger.info('Got theme($theme)');
    return theme ?? ThemeMode.system;
  }

  @override
  Future<void> cacheTheme(ThemeMode theme) async {
    try {
      await _cacheService.write('themeMode', theme.toString());
      logger.info('Cached $theme');
    } on Exception catch (e) {
      logger.error(e.toString());
    }
  }
}
