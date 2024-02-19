import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesDividerThemeData', () {
    test('light theme should have correct properties', () {
      expect(
        GroceriesDividerThemeData.light.color,
        equals(AppColors.black.withOpacity(0.5)),
      );
    });

    test('dark theme should have correct properties', () {
      expect(
        GroceriesDividerThemeData.dark.color,
        equals(AppColors.white.withOpacity(0.5)),
      );
    });
  });
}
