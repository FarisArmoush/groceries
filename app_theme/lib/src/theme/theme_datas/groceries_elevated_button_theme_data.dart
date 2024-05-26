import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesElevatedButtonThemeData {
  static final light = ElevatedButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12),
        ),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.lightGrey;
          }
          return AppColors.black;
        },
      ),
      foregroundColor: WidgetStateProperty.all<Color>(
        AppColors.white,
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        AppColors.white.withOpacity(0.12),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
      iconColor: WidgetStateProperty.all<Color>(
        AppColors.white,
      ),
    ),
  );

  static final dark = ElevatedButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12),
        ),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.lightGrey;
          }
          return AppColors.white;
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.white;
          }
          return AppColors.black;
        },
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        AppColors.black.withOpacity(0.12),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
      iconColor: WidgetStateProperty.all<Color>(
        AppColors.white,
      ),
    ),
  );
}
