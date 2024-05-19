import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesFilledButtonThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesFilledButtonThemeData.light;

      final defaultStyle = lightTheme.style;
      final disabledBackgroundColor = defaultStyle?.backgroundColor!.resolve(
        {WidgetState.disabled},
      );
      final defaultForegroundColor = defaultStyle?.foregroundColor!.resolve({});
      final disabledForegroundColor = defaultStyle?.foregroundColor!.resolve(
        {WidgetState.disabled},
      );
      final overlayColor = defaultStyle?.overlayColor!.resolve({});

      expect(
        defaultStyle?.shape,
        isInstanceOf<WidgetStateProperty<OutlinedBorder?>>(),
      );
      expect(
        defaultStyle?.splashFactory,
        equals(appSplashFactory),
      );
      expect(
        defaultStyle?.shadowColor!.resolve({}),
        equals(AppColors.black),
      );
      expect(
        overlayColor,
        equals(AppColors.white.withOpacity(0.25)),
      );
      expect(
        defaultStyle?.elevation!.resolve({}),
        equals(10),
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
      expect(disabledBackgroundColor, equals(AppColors.lightGrey));
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesFilledButtonThemeData.dark;

      final defaultStyle = darkTheme.style;
      final disabledBackgroundColor = defaultStyle?.backgroundColor!.resolve(
        {WidgetState.disabled},
      );
      final defaultForegroundColor = defaultStyle?.foregroundColor!.resolve({});
      final disabledForegroundColor = defaultStyle?.foregroundColor!.resolve(
        {WidgetState.disabled},
      );
      final overlayColor = defaultStyle?.overlayColor!.resolve(
        {},
      );

      expect(
        defaultStyle?.shape,
        isInstanceOf<WidgetStateProperty<OutlinedBorder?>>(),
      );
      expect(defaultStyle?.splashFactory, equals(appSplashFactory));
      expect(
        defaultStyle?.shadowColor!.resolve({}),
        equals(AppColors.white.withOpacity(0.2)),
      );
      expect(
        overlayColor,
        equals(AppColors.white.withOpacity(0.3)),
      );
      expect(
        defaultStyle?.elevation!.resolve({}),
        equals(10),
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
      expect(disabledBackgroundColor, equals(AppColors.lightGrey));
    });
  });
}
