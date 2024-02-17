import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesOutlinedButtonThemeData {
  static OutlinedButtonThemeData light() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        splashFactory: _splashFactory,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            color: AppColors.lightGrey,
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          AppColors.black.withOpacity(0.15),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.black,
        ),
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.black,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData dark() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        splashFactory: _splashFactory,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            color: AppColors.lightGrey,
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          AppColors.white.withOpacity(0.25),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.white,
        ),
        iconColor: MaterialStateProperty.all<Color>(
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
  }

  static const _splashFactory = NoSplash.splashFactory;
}
