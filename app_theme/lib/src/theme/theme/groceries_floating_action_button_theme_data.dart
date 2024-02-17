import 'package:flutter/material.dart';
import 'package:groceries_app_ui/app_theme.dart';

abstract final class GroceriesFloatingActionButtonThemeData {
  static FloatingActionButtonThemeData light() {
    return const FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(176, 8, 8, 1),
      extendedTextStyle: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: AppColors.white,
        fontSize: 16,
      ),
    );
  }

  static FloatingActionButtonThemeData dark() {
    return const FloatingActionButtonThemeData(
      backgroundColor: AppColors.lightRed,
      extendedTextStyle: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: AppColors.white,
        fontSize: 16,
      ),
    );
  }
}
