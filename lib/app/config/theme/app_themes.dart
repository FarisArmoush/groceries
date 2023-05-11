import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries/app/utils/constants/app_colors.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';
import 'package:groceries/gen/fonts.gen.dart';

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
part '__app_text_theme.dart';

class AppThemes {
  AppThemes._();
  static final ThemeData lightTheme = ThemeData.light(
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
    appBarTheme: _AppAppBarThemeData.light,
    inputDecorationTheme: _AppInputDecorationThemeData.light,
    listTileTheme: _AppListTileThemeData.light,
    bottomSheetTheme: _AppBottomSheetThemeData.light,
    radioTheme: _AppRadioThemeData.light,
    textButtonTheme: _AppTextButtonThemeData.light,
    progressIndicatorTheme: _AppProgressIndicatorThemeData.light,
    dialogTheme: _AppDialogThemeData.light,
    filledButtonTheme: _AppFilledButtonThemeData.light,
    outlinedButtonTheme: _AppOutlinedButtonThemeData.light,
    elevatedButtonTheme: __AppElevatedButtonThemeData.light,
    tabBarTheme: _AppTabBarThemeData.light,
    textTheme: _AppTextTheme.light,
    floatingActionButtonTheme: _AppFloatingActionButtonThemeData.light,
    dividerTheme: _AppDividerThemeData.light,
  );

  static final ThemeData darkTheme = ThemeData.dark(
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
    appBarTheme: _AppAppBarThemeData.dark,
    inputDecorationTheme: _AppInputDecorationThemeData.dark,
    listTileTheme: _AppListTileThemeData.dark,
    bottomSheetTheme: _AppBottomSheetThemeData.dark,
    radioTheme: _AppRadioThemeData.dark,
    textButtonTheme: _AppTextButtonThemeData.dark,
    progressIndicatorTheme: _AppProgressIndicatorThemeData.dark,
    dialogTheme: _AppDialogThemeData.dark,
    filledButtonTheme: _AppFilledButtonThemeData.dark,
    outlinedButtonTheme: _AppOutlinedButtonThemeData.dark,
    elevatedButtonTheme: __AppElevatedButtonThemeData.dark,
    tabBarTheme: _AppTabBarThemeData.dark,
    textTheme: _AppTextTheme.dark,
    floatingActionButtonTheme: _AppFloatingActionButtonThemeData.dark,
    dividerTheme: _AppDividerThemeData.dark,
  );
}
