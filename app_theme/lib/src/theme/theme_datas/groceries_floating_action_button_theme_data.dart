import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesFloatingActionButtonThemeData {
  static const light = FloatingActionButtonThemeData(
    backgroundColor: Color.fromRGBO(176, 8, 8, 1),
    extendedTextStyle: TextStyle(
      fontWeight: AppFontWeights.regular,
      color: AppColors.white,
      fontSize: 16,
    ),
  );

  static const dark = FloatingActionButtonThemeData(
    backgroundColor: AppColors.lightRed,
    extendedTextStyle: TextStyle(
      fontWeight: AppFontWeights.regular,
      color: AppColors.white,
      fontSize: 16,
    ),
  );
}
