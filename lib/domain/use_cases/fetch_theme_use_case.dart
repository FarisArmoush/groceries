import 'package:flutter/material.dart';
import 'package:groceries/domain/repositories/theme_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class FetchThemeUseCase {
  const FetchThemeUseCase(this._themeRepository);

  final ThemeRepository _themeRepository;

  Future<ThemeMode> call() async => _themeRepository.getTheme();
}
