import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesIconButtonThemeData', () {
    test('light theme should have correct properties', () {
      expect(
        GroceriesIconButtonThemeData.light.style?.splashFactory,
        equals(appSplashFactory),
      );
    });

    test('dark theme should have correct properties', () {
      expect(
        GroceriesIconButtonThemeData.dark.style?.splashFactory,
        equals(appSplashFactory),
      );
    });
  });
}
