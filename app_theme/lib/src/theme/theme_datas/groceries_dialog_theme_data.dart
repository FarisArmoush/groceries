import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesDialogThemeData {
  static DialogTheme light() {
    return const DialogTheme(
      backgroundColor: AppColors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: AppFontWeights.medium,
        color: AppColors.black,
        fontSize: 22,
      ),
      contentTextStyle: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: AppColors.black,
        fontSize: 16,
      ),
      alignment: Alignment.center,
    );
  }

  static DialogTheme dark() {
    return const DialogTheme(
      backgroundColor: AppColors.darkGrey,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: AppFontWeights.medium,
        color: AppColors.white,
        fontSize: 22,
      ),
      contentTextStyle: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: AppColors.white,
        fontSize: 16,
      ),
    );
  }
}
