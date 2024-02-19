import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesTextButtonThemeData {
  static final TextButtonThemeData light = TextButtonThemeData(
    style: ButtonStyle(
      splashFactory: _splashFactory,
      iconColor: MaterialStateProperty.all<Color>(
        AppColors.black,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        AppColors.darkRed,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          fontSize: 16,
          color: AppColors.darkRed,
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        AppColors.black.withOpacity(0.1),
      ),
    ),
  );

  static final TextButtonThemeData dark = TextButtonThemeData(
    style: ButtonStyle(
      splashFactory: _splashFactory,
      iconColor: MaterialStateProperty.all<Color>(
        AppColors.white,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        AppColors.lightRed,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.lightRed,
          fontSize: 16,
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        AppColors.white.withOpacity(0.1),
      ),
    ),
  );

  static const _splashFactory = NoSplash.splashFactory;
}
