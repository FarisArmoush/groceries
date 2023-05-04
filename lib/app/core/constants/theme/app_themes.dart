import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/constants/color_constants.dart';
import 'package:groceries/gen/fonts.gen.dart';

part '__app_progress_indicator_theme_data.dart';
part '__app_app_bar_theme_data.dart';
part '__app_bottom_sheet_theme_data.dart';
part '__app_color_scheme.dart';
part '__app_input_decoration_theme_data.dart';
part '__app_list_tile_theme_data.dart';
part '__app_radio_theme_data.dart';
part '__app_text_button_theme_data.dart';
part '__app_dialog_theme_data.dart';
part '__app_filled_button_theme_data.dart';
part '__app_outlined_button_theme_data.dart';
part '__app_elevated_button_theme_data.dart';
part '__app_tab_bar_theme_data.dart';
part '__app_floating_action_button_theme_data.dart';
part '__app_text_theme.dart';

class AppThemes {
  AppThemes._();
  static final ThemeData lightTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    brightness: Brightness.light,
    primaryColor: ColorConstants.black,
    primaryColorLight: ColorConstants.red,
    primaryColorDark: Colors.red,
    hintColor: ColorConstants.lightGrey,
    cardColor: ColorConstants.veryLightGrey,
    shadowColor: ColorConstants.black.withOpacity(0.25),
    dividerColor: ColorConstants.black.withOpacity(0.25),
    scaffoldBackgroundColor: ColorConstants.white,
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
    // fontFamily: FontFamily.poppinsRegular,
  );

  static final ThemeData darkTheme = ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    brightness: Brightness.dark,
    primaryColor: ColorConstants.white,
    primaryColorLight: Colors.red,
    primaryColorDark: ColorConstants.red,
    hintColor: ColorConstants.lightGrey,
    cardColor: ColorConstants.cardDarkGrey,
    shadowColor: ColorConstants.white.withOpacity(0.125),
    dividerColor: ColorConstants.white.withOpacity(0.25),
    scaffoldBackgroundColor: ColorConstants.darkGrey,
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
  );
}
