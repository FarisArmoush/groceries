import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesRadioThemeData {
  static final light = RadioThemeData(
    fillColor: WidgetStateProperty.all<Color>(
      AppColors.lightGrey,
    ),
  );

  static final dark = RadioThemeData(
    fillColor: WidgetStateProperty.all<Color>(
      AppColors.white,
    ),
  );
}
