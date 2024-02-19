import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesInputDecorationThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesInputDecorationThemeData.light();

      expect(
        lightTheme.floatingLabelStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.black,
            fontSize: 16,
          ),
        ),
      );
      expect(
        lightTheme.errorStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.medium,
            fontSize: 12,
            color: AppColors.darkRed,
          ),
        ),
      );
      expect(
        lightTheme.labelStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.medium,
            color: AppColors.lightGrey,
            fontSize: 16,
          ),
        ),
      );
      expect(
        lightTheme.prefixIconColor,
        equals(AppColors.lightGrey),
      );
      expect(
        lightTheme.enabledBorder!.borderSide.color,
        equals(AppColors.lightRed),
      );
      expect(
        lightTheme.focusedBorder!.borderSide.color,
        equals(AppColors.lightRed),
      );
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesInputDecorationThemeData.dark();

      expect(
        darkTheme.floatingLabelStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      );
      expect(
        darkTheme.errorStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.medium,
            fontSize: 12,
            color: AppColors.lightRed,
          ),
        ),
      );
      expect(
        darkTheme.labelStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.medium,
            color: AppColors.lightGrey,
            fontSize: 16,
          ),
        ),
      );
      expect(
        darkTheme.prefixIconColor,
        equals(AppColors.lightGrey),
      );
      expect(
        darkTheme.enabledBorder!.borderSide.color,
        equals(AppColors.darkRed),
      );
      expect(
        darkTheme.focusedBorder!.borderSide.color,
        equals(AppColors.darkRed),
      );
    });
  });
}
