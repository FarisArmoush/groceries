import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesFilledButtonThemeData {
  static FilledButtonThemeData light = FilledButtonThemeData(
    style: ButtonStyle(
      splashFactory: _splashFactory,
      shadowColor: MaterialStateProperty.all(
        AppColors.black,
      ),
      overlayColor: MaterialStateProperty.all(
        AppColors.white.withOpacity(0.25),
      ),
      elevation: MaterialStateProperty.all<double>(10),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      foregroundColor: MaterialStateProperty.all(
        AppColors.white,
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.lightGrey;
          }
          return AppColors.darkRed;
        },
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    ),
  );

  static final FilledButtonThemeData dark = FilledButtonThemeData(
    style: ButtonStyle(
      splashFactory: _splashFactory,
      shadowColor: MaterialStateProperty.all(
        AppColors.white.withOpacity(0.2),
      ),
      overlayColor: MaterialStateProperty.all(
        AppColors.white.withOpacity(0.3),
      ),
      elevation: MaterialStateProperty.all<double>(10),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.lightGrey;
          }
          return AppColors.lightRed;
        },
      ),
      foregroundColor: MaterialStateProperty.all(
        AppColors.white,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    ),
  );

  static const _splashFactory = NoSplash.splashFactory;
}
