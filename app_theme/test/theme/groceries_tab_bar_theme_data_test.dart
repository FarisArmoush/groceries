import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesTabBarThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesTabBarThemeData.light;

      expect(
        lightTheme.labelStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.black,
            fontSize: 16,
          ),
        ),
      );
      expect(
        lightTheme.unselectedLabelStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.lightGrey,
            fontSize: 16,
          ),
        ),
      );
      expect(
        lightTheme.overlayColor!.resolve({}),
        equals(AppColors.white.withOpacity(0.1)),
      );
      expect(
        lightTheme.unselectedLabelColor,
        equals(AppColors.lightGrey),
      );
      expect(
        lightTheme.labelColor,
        equals(AppColors.black),
      );
      expect(
        lightTheme.dividerColor,
        equals(AppColors.transparent),
      );
      expect(
        lightTheme.indicatorColor,
        equals(AppColors.lightRed),
      );
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesTabBarThemeData.dark;

      expect(
        darkTheme.labelStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      );
      expect(
        darkTheme.unselectedLabelStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.lightGrey,
            fontSize: 16,
          ),
        ),
      );
      expect(
        darkTheme.overlayColor!.resolve({}),
        equals(AppColors.white.withOpacity(0.1)),
      );
      expect(
        darkTheme.unselectedLabelColor,
        equals(AppColors.lightGrey),
      );
      expect(
        darkTheme.labelColor,
        equals(AppColors.white),
      );
      expect(
        darkTheme.dividerColor,
        equals(AppColors.transparent),
      );
      expect(
        darkTheme.indicatorColor,
        equals(AppColors.darkRed),
      );
    });
  });
}
