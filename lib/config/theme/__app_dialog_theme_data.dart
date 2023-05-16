part of 'app_themes.dart';

class _AppDialogThemeData {
  static DialogTheme light(BuildContext context) {
    return DialogTheme(
      backgroundColor: AppColors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.black,
        fontSize: 22,
      ),
      contentTextStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.black,
        fontSize: 16,
      ),
      alignment: Alignment.center,
    );
  }

  static DialogTheme dark(BuildContext context) {
    return DialogTheme(
      backgroundColor: AppColors.darkGrey,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: AppColors.white,
        fontSize: 22,
      ),
      contentTextStyle: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: AppColors.white,
        fontSize: 16,
      ),
    );
  }
}
