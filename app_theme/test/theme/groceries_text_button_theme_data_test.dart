import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesTextButtonThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesTextButtonThemeData.light;

      final defaultStyle = lightTheme.style;
      final iconColor = defaultStyle?.iconColor!.resolve({});
      final foregroundColor = defaultStyle?.foregroundColor!.resolve({});
      final textStyle = defaultStyle?.textStyle!.resolve({});
      final overlayColor = defaultStyle?.overlayColor!.resolve({});

      expect(
        defaultStyle?.splashFactory,
        equals(appSplashFactory),
      );
      expect(
        iconColor,
        equals(AppColors.black),
      );
      expect(
        foregroundColor,
        equals(AppColors.darkRed),
      );
      expect(
        textStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            fontSize: 16,
            color: AppColors.darkRed,
          ),
        ),
      );
      expect(overlayColor, equals(AppColors.black.withOpacity(0.1)));
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesTextButtonThemeData.dark;

      final defaultStyle = darkTheme.style;
      final iconColor = defaultStyle?.iconColor!.resolve({});
      final foregroundColor = defaultStyle?.foregroundColor!.resolve({});
      final textStyle = defaultStyle?.textStyle!.resolve({});
      final overlayColor = defaultStyle?.overlayColor!.resolve({});

      expect(
        defaultStyle?.splashFactory,
        equals(appSplashFactory),
      );
      expect(
        iconColor,
        equals(AppColors.white),
      );
      expect(
        foregroundColor,
        equals(AppColors.lightRed),
      );
      expect(
        textStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.lightRed,
            fontSize: 16,
          ),
        ),
      );
      expect(overlayColor, equals(AppColors.white.withOpacity(0.1)));
    });
  });
}
