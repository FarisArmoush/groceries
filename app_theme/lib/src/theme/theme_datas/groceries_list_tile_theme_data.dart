import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesListTileThemeData {
  static final ListTileThemeData light = ListTileThemeData(
    tileColor: AppColors.offWhite,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    titleTextStyle: const TextStyle(
      fontWeight: AppFontWeights.regular,
      fontSize: 16,
      color: AppColors.black,
    ),
    subtitleTextStyle: const TextStyle(
      fontWeight: AppFontWeights.light,
      fontSize: 12,
      color: AppColors.lightGrey,
    ),
    leadingAndTrailingTextStyle: const TextStyle(
      fontWeight: AppFontWeights.light,
      fontSize: 12,
      color: AppColors.black,
    ),
  );

  static final ListTileThemeData dark = ListTileThemeData(
    tileColor: AppColors.cardDarkGrey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    titleTextStyle: const TextStyle(
      fontWeight: AppFontWeights.regular,
      fontSize: 16,
      color: AppColors.white,
    ),
    subtitleTextStyle: const TextStyle(
      fontWeight: AppFontWeights.light,
      fontSize: 12,
      color: AppColors.lightGrey,
    ),
    leadingAndTrailingTextStyle: const TextStyle(
      fontWeight: AppFontWeights.light,
      fontSize: 12,
      color: AppColors.white,
    ),
  );
}
