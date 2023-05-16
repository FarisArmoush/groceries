part of 'app_themes.dart';

class _AppInputDecorationThemeData {
  static InputDecorationTheme light(BuildContext context) {
    return InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.black,
        fontSize: 16,
      ),
      errorStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        fontSize: 12,
        color: AppColors.darkRed,
      ),
      labelStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.lightGrey,
        fontSize: 16,
      ),
    );
  }

  static InputDecorationTheme dark(BuildContext context) {
    return InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.white,
        fontSize: 16,
      ),
      errorStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        fontSize: 12,
        color: AppColors.lightRed,
      ),
      labelStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.lightGrey,
        fontSize: 16,
      ),
    );
  }
}
