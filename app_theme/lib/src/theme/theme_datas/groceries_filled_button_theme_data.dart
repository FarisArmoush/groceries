import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesFilledButtonThemeData {
  static final light = FilledButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
      shadowColor: WidgetStateProperty.all(
        AppColors.black,
      ),
      overlayColor: WidgetStateProperty.all(
        AppColors.white.withOpacity(0.25),
      ),
      elevation: WidgetStateProperty.all<double>(10),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(
        AppColors.white,
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.lightGrey;
          }
          return AppColors.darkRed;
        },
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    ),
  );

  static final dark = FilledButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
      shadowColor: WidgetStateProperty.all(
        AppColors.white.withOpacity(0.2),
      ),
      overlayColor: WidgetStateProperty.all(
        AppColors.white.withOpacity(0.3),
      ),
      elevation: WidgetStateProperty.all<double>(10),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12),
        ),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.lightGrey;
          }
          return AppColors.lightRed;
        },
      ),
      foregroundColor: WidgetStateProperty.all(
        AppColors.white,
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}
