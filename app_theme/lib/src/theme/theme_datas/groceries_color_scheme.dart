import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesColorScheme {
  static final light = ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.white,
    brightness: Brightness.light,
    error: AppColors.darkRed,
  );
  static final dark = ColorScheme.fromSwatch().copyWith(
    brightness: Brightness.dark,
    primary: AppColors.darkRed,
    secondary: AppColors.black,
    primaryContainer: AppColors.cardDarkGrey,
    onSurface: AppColors.white,
    surface: AppColors.darkGrey,
    shadow: AppColors.white.withOpacity(0.015),
    outline: AppColors.lightGrey,
  );
}
