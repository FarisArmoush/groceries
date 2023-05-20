import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

part '__app_app_bar_theme_data.dart';
part '__app_bottom_sheet_theme_data.dart';
part '__app_color_scheme.dart';
part '__app_dialog_theme_data.dart';
part '__app_divider_theme_data.dart';
part '__app_elevated_button_theme_data.dart';
part '__app_filled_button_theme_data.dart';
part '__app_floating_action_button_theme_data.dart';
part '__app_input_decoration_theme_data.dart';
part '__app_list_tile_theme_data.dart';
part '__app_outlined_button_theme_data.dart';
part '__app_progress_indicator_theme_data.dart';
part '__app_radio_theme_data.dart';
part '__app_tab_bar_theme_data.dart';
part '__app_text_button_theme_data.dart';

/// A class that provides light and dark themes for the application.
class AppThemes {
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
        cardColor: AppColors.veryLightGrey,
        shadowColor: AppColors.black.withOpacity(0.25),
        dividerColor: AppColors.black.withOpacity(0.25),
        scaffoldBackgroundColor: AppColors.white,
        colorScheme: _AppColorScheme.light,
        appBarTheme: _AppAppBarThemeData.light(context),
        inputDecorationTheme: _AppInputDecorationThemeData.light(context),
        listTileTheme: _AppListTileThemeData.light(context),
        bottomSheetTheme: _AppBottomSheetThemeData.light,
        radioTheme: _AppRadioThemeData.light,
        textButtonTheme: _AppTextButtonThemeData.light(context),
        progressIndicatorTheme: _AppProgressIndicatorThemeData.light,
        dialogTheme: _AppDialogThemeData.light(context),
        filledButtonTheme: _AppFilledButtonThemeData.light(context),
        outlinedButtonTheme: _AppOutlinedButtonThemeData.light(context),
        elevatedButtonTheme: __AppElevatedButtonThemeData.light(context),
        tabBarTheme: _AppTabBarThemeData.light(context),
        floatingActionButtonTheme:
            _AppFloatingActionButtonThemeData.light(context),
        dividerTheme: _AppDividerThemeData.light,
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
        colorScheme: _AppColorScheme.dark,
        appBarTheme: _AppAppBarThemeData.dark(context),
        inputDecorationTheme: _AppInputDecorationThemeData.dark(context),
        listTileTheme: _AppListTileThemeData.dark(context),
        bottomSheetTheme: _AppBottomSheetThemeData.dark,
        radioTheme: _AppRadioThemeData.dark,
        textButtonTheme: _AppTextButtonThemeData.dark(context),
        progressIndicatorTheme: _AppProgressIndicatorThemeData.dark,
        dialogTheme: _AppDialogThemeData.dark(context),
        filledButtonTheme: _AppFilledButtonThemeData.dark(context),
        outlinedButtonTheme: _AppOutlinedButtonThemeData.dark(context),
        elevatedButtonTheme: __AppElevatedButtonThemeData.dark(context),
        tabBarTheme: _AppTabBarThemeData.dark(context),
        floatingActionButtonTheme:
            _AppFloatingActionButtonThemeData.dark(context),
        dividerTheme: _AppDividerThemeData.dark,
      );
}
