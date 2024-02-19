import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesProgressIndicatorThemeData {
  static const light = ProgressIndicatorThemeData(
    color: AppColors.darkRed,
  );
  static const dark = ProgressIndicatorThemeData(
    color: AppColors.lightRed,
  );
}
