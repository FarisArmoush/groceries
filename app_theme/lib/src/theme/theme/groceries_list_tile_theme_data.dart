import 'package:flutter/material.dart';
import 'package:groceries_app_ui/app_theme.dart';
import 'package:groceries_app_ui/src/app_fonts.dart';

abstract final class GroceriesListTileThemeData {
  static ListTileThemeData light(BuildContext context) {
    return ListTileThemeData(
      tileColor: AppColors.offWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        fontSize: 16,
        color: AppColors.black,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: AppFonts.light(context),
        fontSize: 12,
        color: AppColors.lightGrey,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        fontFamily: AppFonts.light(context),
        fontSize: 12,
        color: AppColors.black,
      ),
    );
  }

  static ListTileThemeData dark(BuildContext context) {
    return ListTileThemeData(
      tileColor: AppColors.cardDarkGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        fontSize: 16,
        color: AppColors.white,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: AppFonts.light(context),
        fontSize: 12,
        color: AppColors.lightGrey,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        fontFamily: AppFonts.light(context),
        fontSize: 12,
        color: AppColors.white,
      ),
    );
  }
}
