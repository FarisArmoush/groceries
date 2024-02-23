import 'package:flutter_test/flutter_test.dart';
import 'package:groceries_theme/app_theme.dart';

void main() {
  group('GroceriesBottomSheetThemeData', () {
    test('light theme should have correct properties', () {
      expect(
        GroceriesBottomSheetThemeData.light.backgroundColor,
        equals(AppColors.white),
      );
      expect(
        GroceriesBottomSheetThemeData.light.elevation,
        equals(0),
      );
      expect(
        GroceriesBottomSheetThemeData.light.dragHandleColor,
        equals(AppColors.lightGrey),
      );
    });

    test('dark theme should have correct properties', () {
      expect(
        GroceriesBottomSheetThemeData.dark.backgroundColor,
        equals(AppColors.darkGrey),
      );
      expect(
        GroceriesBottomSheetThemeData.dark.elevation,
        equals(0),
      );
      expect(
        GroceriesBottomSheetThemeData.dark.dragHandleColor,
        equals(AppColors.lightGrey),
      );
    });
  });
}
