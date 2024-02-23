import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesProgressIndicatorThemeData', () {
    test('light theme should have correct properties', () {
      expect(
        GroceriesProgressIndicatorThemeData.light.color,
        equals(AppColors.darkRed),
      );
    });

    test('dark theme should have correct properties', () {
      expect(
        GroceriesProgressIndicatorThemeData.dark.color,
        equals(AppColors.lightRed),
      );
    });
  });
}
