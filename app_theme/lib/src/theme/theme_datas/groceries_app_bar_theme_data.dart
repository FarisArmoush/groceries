import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesAppBarThemeData {
  static AppBarTheme light() {
    return const AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.black,
      ),
      surfaceTintColor: AppColors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      scrolledUnderElevation: 1,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: AppFontWeights.medium,
        color: AppColors.black,
        fontSize: _fontSize,
      ),
      backgroundColor: AppColors.white,
    );
  }

  static AppBarTheme dark() {
    return AppBarTheme(
      scrolledUnderElevation: 1,
      iconTheme: IconThemeData(
        color: AppColors.white.withOpacity(0.99),
      ),
      actionsIconTheme: const IconThemeData(
        color: AppColors.white,
      ),
      surfaceTintColor: AppColors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontWeight: AppFontWeights.medium,
        color: AppColors.white,
        fontSize: _fontSize,
      ),
      backgroundColor: AppColors.darkGrey,
    );
  }

  static const _fontSize = 20.0;
}
