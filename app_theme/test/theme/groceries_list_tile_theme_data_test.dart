import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesListTileThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesListTileThemeData.light;

      expect(
        lightTheme.tileColor,
        equals(AppColors.offWhite),
      );
      expect(
        lightTheme.shape,
        equals(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
      expect(
        lightTheme.titleTextStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
      );
      expect(
        lightTheme.subtitleTextStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.light,
            fontSize: 12,
            color: AppColors.lightGrey,
          ),
        ),
      );
      expect(
        lightTheme.leadingAndTrailingTextStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.light,
            fontSize: 12,
            color: AppColors.black,
          ),
        ),
      );
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesListTileThemeData.dark;

      expect(
        darkTheme.tileColor,
        equals(AppColors.cardDarkGrey),
      );
      expect(
        darkTheme.shape,
        equals(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
      expect(
        darkTheme.titleTextStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            fontSize: 16,
            color: AppColors.white,
          ),
        ),
      );
      expect(
        darkTheme.subtitleTextStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.light,
            fontSize: 12,
            color: AppColors.lightGrey,
          ),
        ),
      );
      expect(
        darkTheme.leadingAndTrailingTextStyle,
        equals(
          const TextStyle(
            fontWeight: AppFontWeights.light,
            fontSize: 12,
            color: AppColors.white,
          ),
        ),
      );
    });
  });
}
