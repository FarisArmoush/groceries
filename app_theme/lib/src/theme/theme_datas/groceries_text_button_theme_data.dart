import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesTextButtonThemeData {
  static final light = TextButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
      iconColor: WidgetStateProperty.all<Color>(
        AppColors.black,
      ),
      foregroundColor: WidgetStateProperty.all<Color>(
        AppColors.darkRed,
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          fontSize: 16,
          color: AppColors.darkRed,
        ),
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        AppColors.black.withOpacity(0.1),
      ),
    ),
  );

  static final dark = TextButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
      iconColor: WidgetStateProperty.all<Color>(
        AppColors.white,
      ),
      foregroundColor: WidgetStateProperty.all<Color>(
        AppColors.lightRed,
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.lightRed,
          fontSize: 16,
        ),
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        AppColors.white.withOpacity(0.1),
      ),
    ),
  );
}
