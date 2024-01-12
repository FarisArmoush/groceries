import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/app_theme_model/app_theme_model.dart';

void main() {
  group('AppThemeModel', () {
    test('AppThemeModel.Equality', () {
      final model1 = AppThemeModel(
        title: 'Light Theme',
        themeMode: ThemeMode.light,
      );

      final model2 = AppThemeModel(
        title: 'Light Theme',
        themeMode: ThemeMode.light,
      );

      expect(model1, model2);
    });

    test('AppThemeModel.copyWith', () {
      final originalModel = AppThemeModel(
        title: 'Light Theme',
        themeMode: ThemeMode.light,
      );

      final modifiedModel = originalModel.copyWith(
        title: 'Dark Theme',
      );

      expect(modifiedModel.title, 'Dark Theme');
      expect(modifiedModel.themeMode, originalModel.themeMode);
      expect(modifiedModel, isNot(originalModel));
    });
  });
}
