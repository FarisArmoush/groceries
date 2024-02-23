import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_icon_button_theme_data.dart';

void main() {
  group('GroceriesIconButtonThemeData', () {
    test('light theme should have correct properties', () {
      expect(
        GroceriesIconButtonThemeData.light.style?.splashFactory,
        equals(_splashFactory),
      );
    });

    test('dark theme should have correct properties', () {
      expect(
        GroceriesIconButtonThemeData.dark.style?.splashFactory,
        equals(_splashFactory),
      );
    });
  });
}

const _splashFactory = NoSplash.splashFactory;
