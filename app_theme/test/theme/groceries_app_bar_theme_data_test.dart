import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesAppBarThemeData', () {
    test('light theme should have correct properties', () {
      const lightTheme = GroceriesAppBarThemeData.light;

      expect(
        lightTheme.iconTheme!.color,
        equals(AppColors.black),
      );
      expect(
        lightTheme.surfaceTintColor,
        equals(AppColors.transparent),
      );
      expect(
        lightTheme.systemOverlayStyle,
        equals(SystemUiOverlayStyle.light),
      );
      expect(
        lightTheme.elevation,
        equals(0),
      );
      expect(
        lightTheme.scrolledUnderElevation,
        equals(1),
      );
      expect(
        lightTheme.centerTitle,
        isTrue,
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
        equals(20.0),
      );
      expect(
        lightTheme.backgroundColor,
        equals(AppColors.white),
      );
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesAppBarThemeData.dark;
      expect(
        darkTheme.iconTheme!.color,
        equals(AppColors.white.withOpacity(0.99)),
      );
      expect(
        darkTheme.actionsIconTheme!.color,
        equals(AppColors.white),
      );
      expect(
        darkTheme.surfaceTintColor,
        equals(AppColors.transparent),
      );
      expect(
        darkTheme.systemOverlayStyle,
        equals(SystemUiOverlayStyle.light),
      );
      expect(
        darkTheme.elevation,
        equals(0),
      );
      expect(
        darkTheme.scrolledUnderElevation,
        equals(1),
      );
      expect(
        darkTheme.centerTitle,
        isTrue,
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
        equals(20.0),
      );
      expect(
        darkTheme.backgroundColor,
        equals(AppColors.darkGrey),
      );
    });
  });
}
