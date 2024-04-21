import 'package:flutter/material.dart';

abstract interface class ThemeDataSource {
  Future<ThemeMode> getTheme();
  Future<void> cacheTheme(ThemeMode theme);
}
