import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesFloatingActionButtonThemeData', () {
    test('light theme should have correct properties', () {
      const lightTheme = GroceriesFloatingActionButtonThemeData.light;

      expect(
        lightTheme.backgroundColor,
        equals(AppColors.darkRed),
      );
      expect(
        lightTheme.extendedTextStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      );
    });

    test('dark theme should have correct properties', () {
      const darkTheme = GroceriesFloatingActionButtonThemeData.dark;

      expect(
        darkTheme.backgroundColor,
        equals(AppColors.lightRed),
      );
      expect(
        darkTheme.extendedTextStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      );
    });
  });
}
