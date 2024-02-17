import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries_app_ui/app_theme.dart';
import 'package:groceries_app_ui/src/app_fonts.dart';

abstract final class GroceriesAppBarThemeData {
  static AppBarTheme light(BuildContext context) {
    return AppBarTheme(
      iconTheme: const IconThemeData(
        color: AppColors.black,
      ),
      surfaceTintColor: AppColors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      scrolledUnderElevation: 1,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.black,
        fontSize: _fontSize,
      ),
      backgroundColor: AppColors.white,
    );
  }

  static AppBarTheme dark(BuildContext context) {
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
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.white,
        fontSize: _fontSize,
      ),
      backgroundColor: AppColors.darkGrey,
    );
  }

  static const _fontSize = 20.0;
}
