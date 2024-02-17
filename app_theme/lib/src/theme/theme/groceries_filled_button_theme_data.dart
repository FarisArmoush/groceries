import 'package:flutter/material.dart';
import 'package:groceries_app_ui/app_theme.dart';
import 'package:groceries_app_ui/src/app_fonts.dart';

abstract final class GroceriesFilledButtonThemeData {
  static FilledButtonThemeData light(BuildContext context) {
    return FilledButtonThemeData(
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
          TextStyle(
            fontFamily: AppFonts.regular(context),
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  static FilledButtonThemeData dark(BuildContext context) {
    return FilledButtonThemeData(
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
          TextStyle(
            fontFamily: AppFonts.regular(context),
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  static const _splashFactory = NoSplash.splashFactory;
}
