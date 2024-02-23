import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesElevatedButtonThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesElevatedButtonThemeData.light;

      final defaultStyle = lightTheme.style;
      final disabledBackgroundColor = defaultStyle?.backgroundColor!.resolve(
        {MaterialState.disabled},
      );
      final defaultForegroundColor = defaultStyle?.foregroundColor!.resolve({});
      final disabledForegroundColor = defaultStyle?.foregroundColor!.resolve(
        {MaterialState.disabled},
      );
      final overlayColor = defaultStyle?.overlayColor!.resolve({});

      expect(
        defaultStyle?.shape,
        isInstanceOf<MaterialStateProperty<OutlinedBorder>>(),
      );
      expect(
        defaultStyle?.splashFactory,
        equals(_splashFactory),
      );
      expect(
        defaultForegroundColor,
        equals(AppColors.white),
      );
      expect(
        disabledForegroundColor,
        equals(AppColors.white),
      );
      expect(
        defaultStyle?.textStyle!.resolve({}),
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      );
      expect(
        disabledBackgroundColor,
        equals(AppColors.lightGrey),
      );
      expect(
        overlayColor,
        equals(AppColors.white.withOpacity(0.12)),
      );
      expect(
        defaultStyle?.iconColor!.resolve({}),
        equals(AppColors.white),
      );
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesElevatedButtonThemeData.dark;

      final defaultStyle = darkTheme.style;
      final disabledBackgroundColor = defaultStyle?.backgroundColor!.resolve(
        {MaterialState.disabled},
      );
      final defaultForegroundColor = defaultStyle?.foregroundColor!.resolve(
        {},
      );
      final disabledForegroundColor = defaultStyle?.foregroundColor!.resolve(
        {MaterialState.disabled},
      );
      final overlayColor = defaultStyle?.overlayColor!.resolve({});

      expect(
        defaultStyle?.shape,
        isInstanceOf<MaterialStateProperty<OutlinedBorder>>(),
      );
      expect(
        defaultStyle?.splashFactory,
        equals(_splashFactory),
      );
      expect(
        defaultForegroundColor,
        equals(AppColors.black),
      );
      expect(
        disabledForegroundColor,
        equals(AppColors.white),
      );
      expect(
        defaultStyle?.textStyle!.resolve({}),
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      );
      expect(
        disabledBackgroundColor,
        equals(AppColors.lightGrey),
      );
      expect(
        overlayColor,
        equals(AppColors.black.withOpacity(0.12)),
      );
      expect(
        defaultStyle?.iconColor!.resolve({}),
        equals(AppColors.white),
      );
    });
  });
}

const _splashFactory = NoSplash.splashFactory;
