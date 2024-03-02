import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesInputDecorationThemeData {
  static const light = InputDecorationTheme(
    floatingLabelStyle: TextStyle(
      fontWeight: AppFontWeights.regular,
      color: AppColors.black,
      fontSize: 16,
    ),
    errorStyle: TextStyle(
      fontWeight: AppFontWeights.medium,
      fontSize: 12,
      color: AppColors.darkRed,
    ),
    labelStyle: TextStyle(
      fontWeight: AppFontWeights.medium,
      color: AppColors.lightGrey,
      fontSize: 16,
    ),
    prefixIconColor: AppColors.lightGrey,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lightRed,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lightRed,
      ),
    ),
  );

  static const dark = InputDecorationTheme(
    floatingLabelStyle: TextStyle(
      fontWeight: AppFontWeights.regular,
      color: AppColors.white,
      fontSize: 16,
    ),
    errorStyle: TextStyle(
      fontWeight: AppFontWeights.medium,
      fontSize: 12,
      color: AppColors.lightRed,
    ),
    labelStyle: TextStyle(
      fontWeight: AppFontWeights.medium,
      color: AppColors.lightGrey,
      fontSize: 16,
    ),
    prefixIconColor: AppColors.lightGrey,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.darkRed,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.darkRed,
      ),
    ),
  );
}
