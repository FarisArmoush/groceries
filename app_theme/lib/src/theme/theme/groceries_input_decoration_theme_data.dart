import 'package:flutter/material.dart';
import 'package:groceries_app_ui/app_theme.dart';
import 'package:groceries_app_ui/src/app_fonts.dart';

abstract final class GroceriesInputDecorationThemeData {
  static InputDecorationTheme light(BuildContext context) {
    return InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.black,
        fontSize: 16,
      ),
      errorStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        fontSize: 12,
        color: AppColors.darkRed,
      ),
      labelStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.lightGrey,
        fontSize: 16,
      ),
      prefixIconColor: AppColors.lightGrey,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.lightRed,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.lightRed,
        ),
      ),
    );
  }

  static InputDecorationTheme dark(BuildContext context) {
    return InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.white,
        fontSize: 16,
      ),
      errorStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        fontSize: 12,
        color: AppColors.lightRed,
      ),
      labelStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.lightGrey,
        fontSize: 16,
      ),
      prefixIconColor: AppColors.lightGrey,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.darkRed,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.darkRed,
        ),
      ),
    );
  }
}
