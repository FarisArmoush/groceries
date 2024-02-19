import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesRadioThemeData', () {
    test('light theme should have correct properties', () {
      final lightTheme = GroceriesRadioThemeData.light;

      final fillColor = lightTheme.fillColor!.resolve({});
      expect(fillColor, equals(AppColors.lightGrey));
    });

    test('dark theme should have correct properties', () {
      final darkTheme = GroceriesRadioThemeData.dark;

      final fillColor = darkTheme.fillColor!.resolve({});
      expect(fillColor, equals(AppColors.white));
    });
  });
}
