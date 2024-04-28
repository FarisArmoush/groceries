import 'package:flutter/material.dart';

abstract interface class ThemeRepository {
  Future<ThemeMode> getTheme();
  Future<void> cacheTheme(ThemeMode theme);
}
