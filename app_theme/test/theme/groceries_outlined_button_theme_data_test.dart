import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesOutlinedButtonThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesOutlinedButtonThemeData.light;

      final defaultStyle = lightTheme.style;
      final overlayColor = defaultStyle?.overlayColor!.resolve({});
      final defaultForegroundColor = defaultStyle?.foregroundColor!.resolve({});
      final textStyle = defaultStyle?.textStyle!.resolve({});

      expect(
        defaultStyle?.shape,
        isInstanceOf<MaterialStateProperty<OutlinedBorder>>(),
      );
      expect(
        defaultStyle?.splashFactory,
        equals(_splashFactory),
      );
      expect(
        defaultStyle?.side,
        equals(
          MaterialStateProperty.all<BorderSide>(
            const BorderSide(color: AppColors.lightGrey),
          ),
        ),
      );
      expect(
        overlayColor,
        equals(AppColors.black.withOpacity(0.15)),
      );
      expect(
        defaultForegroundColor,
        equals(AppColors.black),
      );
      expect(
        textStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.black,
            fontSize: 16,
          ),
        ),
      );
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesOutlinedButtonThemeData.dark;

      final defaultStyle = darkTheme.style;
      final overlayColor = defaultStyle?.overlayColor!.resolve({});
      final defaultForegroundColor = defaultStyle?.foregroundColor!.resolve({});
      final textStyle = defaultStyle?.textStyle!.resolve({});

      expect(
        defaultStyle?.shape,
        isInstanceOf<MaterialStateProperty<OutlinedBorder>>(),
      );
      expect(
        defaultStyle?.splashFactory,
        equals(_splashFactory),
      );
      expect(
        defaultStyle?.side,
        equals(
          MaterialStateProperty.all<BorderSide>(
            const BorderSide(color: AppColors.lightGrey),
          ),
        ),
      );
      expect(
        overlayColor,
        equals(AppColors.white.withOpacity(0.25)),
      );
      expect(
        defaultForegroundColor,
        equals(AppColors.white),
      );
      expect(
        textStyle,
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

const _splashFactory = NoSplash.splashFactory;
