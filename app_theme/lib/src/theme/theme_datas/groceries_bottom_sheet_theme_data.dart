import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class GroceriesBottomSheetThemeData {
  static const light = BottomSheetThemeData(
    backgroundColor: AppColors.white,
    elevation: 0,
    dragHandleColor: AppColors.lightGrey,
  );
  static const dark = BottomSheetThemeData(
    backgroundColor: AppColors.darkGrey,
    elevation: 0,
    dragHandleColor: AppColors.lightGrey,
  );
}
