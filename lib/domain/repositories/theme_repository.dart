import 'package:flutter/material.dart';

abstract class ThemeRepository {
  Future<ThemeMode> getTheme();
  Future<void> cacheTheme(ThemeMode theme);
}
