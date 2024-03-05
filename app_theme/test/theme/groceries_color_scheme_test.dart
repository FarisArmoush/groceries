import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesColorScheme', () {
    test('light scheme should have correct properties', () {
      final lightScheme = GroceriesColorScheme.light;

      expect(lightScheme.secondary, equals(AppColors.white));
      expect(lightScheme.brightness, equals(Brightness.light));
      expect(lightScheme.error, equals(AppColors.darkRed));
    });

    test('dark scheme should have correct properties', () {
      final darkScheme = GroceriesColorScheme.dark;

      expect(darkScheme.brightness, equals(Brightness.dark));
      expect(darkScheme.primary, equals(AppColors.darkRed));
      expect(darkScheme.secondary, equals(AppColors.black));
      expect(darkScheme.primaryContainer, equals(AppColors.cardDarkGrey));
      expect(darkScheme.onBackground, equals(AppColors.white));
      expect(darkScheme.background, equals(AppColors.darkGrey));
      expect(darkScheme.shadow, equals(AppColors.white.withOpacity(0.015)));
      expect(darkScheme.outline, equals(AppColors.lightGrey));
    });
  });
}
