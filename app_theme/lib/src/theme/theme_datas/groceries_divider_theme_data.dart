import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesDividerThemeData {
  static final light = DividerThemeData(
    color: AppColors.black.withOpacity(0.5),
  );
  static final dark = DividerThemeData(
    color: AppColors.white.withOpacity(0.5),
  );
}
