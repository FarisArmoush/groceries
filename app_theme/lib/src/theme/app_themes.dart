import 'package:flutter/material.dart';
import 'package:groceries_app_ui/src/colors.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_app_bar_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_bottom_sheet_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_color_scheme.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_dialog_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_divider_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_elevated_button_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_filled_button_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_floating_action_button_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_icon_button_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_input_decoration_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_list_tile_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_outlined_button_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_progress_indicator_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_radio_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_tab_bar_theme_data.dart';
import 'package:groceries_app_ui/src/theme/theme/groceries_text_button_theme_data.dart';

/// A class that provides light and dark themes for the application.
abstract final class AppThemes {
  AppThemes._();

  /// Returns the light theme for the application.
  ///
  /// The [context] parameter is used to access the current build context.
  static ThemeData lightTheme(BuildContext context) => ThemeData.light(
        useMaterial3: true,
      ).copyWith(
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
        appBarTheme: GroceriesAppBarThemeData.light(context),
        inputDecorationTheme: GroceriesInputDecorationThemeData.light(context),
        listTileTheme: GroceriesListTileThemeData.light(context),
        bottomSheetTheme: GroceriesBottomSheetThemeData.light,
        radioTheme: GroceriesRadioThemeData.light,
        textButtonTheme: GroceriesTextButtonThemeData.light(context),
        progressIndicatorTheme: GroceriesProgressIndicatorThemeData.light,
        dialogTheme: GroceriesDialogThemeData.light(context),
        filledButtonTheme: GroceriesFilledButtonThemeData.light(context),
        outlinedButtonTheme: GroceriesOutlinedButtonThemeData.light(context),
        elevatedButtonTheme: GroceriesElevatedButtonThemeData.light(context),
        tabBarTheme: GroceriesTabBarThemeData.light(context),
        floatingActionButtonTheme:
            GroceriesFloatingActionButtonThemeData.light(context),
        dividerTheme: GroceriesDividerThemeData.light,
        iconButtonTheme: GroceriesIconButtonThemeData.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  /// Returns the dark theme for the application.
  ///
  /// The [context] parameter is used to access the current build context.
  static ThemeData darkTheme(BuildContext context) => ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
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
        appBarTheme: GroceriesAppBarThemeData.dark(context),
        inputDecorationTheme: GroceriesInputDecorationThemeData.dark(context),
        listTileTheme: GroceriesListTileThemeData.dark(context),
        bottomSheetTheme: GroceriesBottomSheetThemeData.dark,
        radioTheme: GroceriesRadioThemeData.dark,
        textButtonTheme: GroceriesTextButtonThemeData.dark(context),
        progressIndicatorTheme: GroceriesProgressIndicatorThemeData.dark,
        dialogTheme: GroceriesDialogThemeData.dark(context),
        filledButtonTheme: GroceriesFilledButtonThemeData.dark(context),
        outlinedButtonTheme: GroceriesOutlinedButtonThemeData.dark(context),
        elevatedButtonTheme: GroceriesElevatedButtonThemeData.dark(context),
        tabBarTheme: GroceriesTabBarThemeData.dark(context),
        floatingActionButtonTheme:
            GroceriesFloatingActionButtonThemeData.dark(context),
        dividerTheme: GroceriesDividerThemeData.dark,
        iconButtonTheme: GroceriesIconButtonThemeData.dark,
      );
}
