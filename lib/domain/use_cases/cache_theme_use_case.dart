import 'package:flutter/material.dart';
import 'package:groceries/domain/repositories/theme_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class CacheThemeUseCase {
  const CacheThemeUseCase(this._themeRepository);

  final ThemeRepository _themeRepository;

  Future<void> call(ThemeMode input) => _themeRepository.cacheTheme(input);
}
