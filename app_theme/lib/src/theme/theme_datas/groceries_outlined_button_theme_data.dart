import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesOutlinedButtonThemeData {
  static final light = OutlinedButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12),
        ),
      ),
      side: WidgetStateProperty.all<BorderSide>(
        const BorderSide(
          color: AppColors.lightGrey,
        ),
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        AppColors.black.withOpacity(0.15),
      ),
      foregroundColor: WidgetStateProperty.all<Color>(
        AppColors.black,
      ),
      iconColor: WidgetStateProperty.all<Color>(
        AppColors.black,
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.black,
          fontSize: 16,
        ),
      ),
    ),
  );

  static final dark = OutlinedButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12),
        ),
      ),
      side: WidgetStateProperty.all<BorderSide>(
        const BorderSide(
          color: AppColors.lightGrey,
        ),
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        AppColors.white.withOpacity(0.25),
      ),
      foregroundColor: WidgetStateProperty.all<Color>(
        AppColors.white,
      ),
      iconColor: WidgetStateProperty.all<Color>(
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
