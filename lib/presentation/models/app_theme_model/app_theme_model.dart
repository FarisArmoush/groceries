import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme_model.freezed.dart';

@freezed
class AppThemeModel with _$AppThemeModel {
  factory AppThemeModel({
    required String title,
    required ThemeMode themeMode,
  }) = _AppThemeModel;
}
