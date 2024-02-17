import 'package:flutter/material.dart';
import 'package:groceries_app_ui/app_theme.dart';

abstract final class GroceriesElevatedButtonThemeData {
  GroceriesElevatedButtonThemeData._();

  static ElevatedButtonThemeData light() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        splashFactory: _splashFactory,
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.lightGrey;
            }
            return AppColors.black;
          },
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.white,
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          AppColors.white.withOpacity(0.12),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.white,
        ),
      ),
    );
  }

  static ElevatedButtonThemeData dark() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        splashFactory: _splashFactory,
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.lightGrey;
            }
            return AppColors.white;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.white;
            }
            return AppColors.black;
          },
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          AppColors.black.withOpacity(0.12),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontWeight: AppFontWeights.regular,
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.white,
        ),
      ),
    );
  }

  static const _splashFactory = NoSplash.splashFactory;
}
