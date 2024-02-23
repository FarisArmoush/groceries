import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesTabBarThemeData {
  static final TabBarTheme light = TabBarTheme(
    labelStyle: const TextStyle(
      fontWeight: AppFontWeights.regular,
      color: AppColors.black,
      fontSize: _labelTextSize,
    ),
    splashFactory: _splashFactory,
    unselectedLabelStyle: const TextStyle(
      fontWeight: AppFontWeights.regular,
      color: AppColors.lightGrey,
      fontSize: _labelTextSize,
    ),
    overlayColor: MaterialStateProperty.all(
      AppColors.white.withOpacity(0.1),
    ),
    unselectedLabelColor: AppColors.lightGrey,
    labelColor: AppColors.black,
    dividerColor: AppColors.transparent,
    indicatorColor: AppColors.lightRed,
  );

  static final TabBarTheme dark = TabBarTheme(
    labelStyle: const TextStyle(
      fontWeight: AppFontWeights.regular,
      color: AppColors.white,
      fontSize: _labelTextSize,
    ),
    splashFactory: _splashFactory,
    unselectedLabelStyle: const TextStyle(
      fontWeight: AppFontWeights.regular,
      color: AppColors.lightGrey,
      fontSize: _labelTextSize,
    ),
    overlayColor: MaterialStateProperty.all(
      AppColors.white.withOpacity(0.1),
    ),
    unselectedLabelColor: AppColors.lightGrey,
    labelColor: AppColors.white,
    dividerColor: AppColors.transparent,
    indicatorColor: AppColors.darkRed,
  );

  static const _splashFactory = NoSplash.splashFactory;
  static const _labelTextSize = 16.0;
}