import 'package:flutter/material.dart';
import 'package:groceries/data/data_sources/interfaces/theme_data_source.dart';
import 'package:groceries/data/data_sources/local/local_theme_data_source.dart';
import 'package:groceries/domain/repositories/theme_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ThemeRepository)
class ThemeRepositoryImpl extends ThemeRepository {
  ThemeRepositoryImpl(
    @Named.from(LocalThemeDataSource) this._themeDataSource,
  );

  final ThemeDataSource _themeDataSource;

  @override
  Future<void> cacheTheme(ThemeMode theme) =>
      _themeDataSource.cacheTheme(theme);

  @override
  Future<ThemeMode> getTheme() => _themeDataSource.getTheme();
}
