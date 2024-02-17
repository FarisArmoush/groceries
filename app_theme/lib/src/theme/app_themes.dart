import 'package:flutter/material.dart';
import 'package:groceries_theme/app_theme.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_app_bar_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_bottom_sheet_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_color_scheme.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_dialog_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_divider_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_elevated_button_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_filled_button_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_floating_action_button_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_icon_button_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_input_decoration_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_list_tile_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_outlined_button_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_progress_indicator_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_radio_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_tab_bar_theme_data.dart';
import 'package:groceries_theme/src/theme/theme_datas/groceries_text_button_theme_data.dart';

/// A class that provides light and dark themes for the application.
abstract final class AppThemes {
  AppThemes._();

  /// Returns the light theme for the application.
  ///
  /// The [ ] parameter is used to access the current build  .
  static ThemeData lightTheme() => ThemeData(
        useMaterial3: true,
        fontFamily: FontFamily.poppins,
        brightness: Brightness.light,
        primaryColor: AppColors.black,
        primaryColorLight: AppColors.darkRed,
        primaryColorDark: AppColors.lightRed,
        hintColor: AppColors.lightGrey,
        cardColor: AppColors.offWhite,
        shadowColor: AppColors.black.withOpacity(0.25),
        dividerColor: AppColors.black.withOpacity(0.25),
        scaffoldBackgroundColor: AppColors.white,
        colorScheme: GroceriesColorScheme.light,
        appBarTheme: GroceriesAppBarThemeData.light(),
        inputDecorationTheme: GroceriesInputDecorationThemeData.light(),
        listTileTheme: GroceriesListTileThemeData.light(),
        bottomSheetTheme: GroceriesBottomSheetThemeData.light,
        radioTheme: GroceriesRadioThemeData.light,
        textButtonTheme: GroceriesTextButtonThemeData.light(),
        progressIndicatorTheme: GroceriesProgressIndicatorThemeData.light,
        dialogTheme: GroceriesDialogThemeData.light(),
        filledButtonTheme: GroceriesFilledButtonThemeData.light(),
        outlinedButtonTheme: GroceriesOutlinedButtonThemeData.light(),
        elevatedButtonTheme: GroceriesElevatedButtonThemeData.light(),
        tabBarTheme: GroceriesTabBarThemeData.light(),
        floatingActionButtonTheme:
            GroceriesFloatingActionButtonThemeData.light(),
        dividerTheme: GroceriesDividerThemeData.light,
        iconButtonTheme: GroceriesIconButtonThemeData.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  /// Returns the dark theme for the application.
  ///
  /// The [ ] parameter is used to access the current build  .
  static ThemeData darkTheme() => ThemeData(
        useMaterial3: true,
        fontFamily: FontFamily.poppins,
        brightness: Brightness.dark,
        primaryColor: AppColors.white,
        primaryColorLight: AppColors.lightRed,
        primaryColorDark: AppColors.darkRed,
        hintColor: AppColors.lightGrey,
        cardColor: AppColors.cardDarkGrey,
        shadowColor: AppColors.white.withOpacity(0.125),
        dividerColor: AppColors.white.withOpacity(0.25),
        scaffoldBackgroundColor: AppColors.darkGrey,
        colorScheme: GroceriesColorScheme.dark,
        appBarTheme: GroceriesAppBarThemeData.dark(),
        inputDecorationTheme: GroceriesInputDecorationThemeData.dark(),
        listTileTheme: GroceriesListTileThemeData.dark(),
        bottomSheetTheme: GroceriesBottomSheetThemeData.dark,
        radioTheme: GroceriesRadioThemeData.dark,
        textButtonTheme: GroceriesTextButtonThemeData.dark(),
        progressIndicatorTheme: GroceriesProgressIndicatorThemeData.dark,
        dialogTheme: GroceriesDialogThemeData.dark(),
        filledButtonTheme: GroceriesFilledButtonThemeData.dark(),
        outlinedButtonTheme: GroceriesOutlinedButtonThemeData.dark(),
        elevatedButtonTheme: GroceriesElevatedButtonThemeData.dark(),
        tabBarTheme: GroceriesTabBarThemeData.dark(),
        floatingActionButtonTheme:
            GroceriesFloatingActionButtonThemeData.dark(),
        dividerTheme: GroceriesDividerThemeData.dark,
        iconButtonTheme: GroceriesIconButtonThemeData.dark,
      );
}
