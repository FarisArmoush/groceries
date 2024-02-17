import 'package:flutter/material.dart';
import 'package:groceries_app_ui/app_theme.dart';
import 'package:groceries_app_ui/src/app_fonts.dart';

abstract final class GroceriesFloatingActionButtonThemeData {
  static FloatingActionButtonThemeData light(BuildContext context) {
    return FloatingActionButtonThemeData(
      backgroundColor: const Color.fromRGBO(176, 8, 8, 1),
      extendedTextStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.white,
        fontSize: 16,
      ),
    );
  }

  static FloatingActionButtonThemeData dark(BuildContext context) {
    return FloatingActionButtonThemeData(
      backgroundColor: AppColors.lightRed,
      extendedTextStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.white,
        fontSize: 16,
      ),
    );
  }
}
