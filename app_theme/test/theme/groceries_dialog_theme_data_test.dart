import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';
import 'package:test/test.dart';

void main() {
  group('GroceriesDialogThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesDialogThemeData.light();

      expect(
        lightTheme.backgroundColor,
        equals(AppColors.white),
      );
      expect(
        lightTheme.elevation,
        equals(0),
      );
      expect(
        lightTheme.titleTextStyle!.fontWeight,
        equals(AppFontWeights.medium),
      );
      expect(
        lightTheme.titleTextStyle!.color,
        equals(AppColors.black),
      );
      expect(
        lightTheme.titleTextStyle!.fontSize,
        equals(22),
      );
      expect(
        lightTheme.contentTextStyle!.fontWeight,
        equals(AppFontWeights.regular),
      );
      expect(
        lightTheme.contentTextStyle!.color,
        equals(AppColors.black),
      );
      expect(
        lightTheme.contentTextStyle!.fontSize,
        equals(16),
      );
      expect(
        lightTheme.alignment,
        equals(Alignment.center),
      );
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesDialogThemeData.dark();

      expect(
        darkTheme.backgroundColor,
        equals(AppColors.darkGrey),
      );
      expect(
        darkTheme.elevation,
        equals(0),
      );
      expect(
        darkTheme.titleTextStyle!.fontWeight,
        equals(AppFontWeights.medium),
      );
      expect(
        darkTheme.titleTextStyle!.color,
        equals(AppColors.white),
      );
      expect(
        darkTheme.titleTextStyle!.fontSize,
        equals(22),
      );
      expect(
        darkTheme.contentTextStyle!.fontWeight,
        equals(AppFontWeights.regular),
      );
      expect(
        darkTheme.contentTextStyle!.color,
        equals(AppColors.white),
      );
      expect(
        darkTheme.contentTextStyle!.fontSize,
        equals(16),
      );
    });
  });
}
