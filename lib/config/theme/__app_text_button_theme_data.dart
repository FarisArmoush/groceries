part of 'app_themes.dart';

class _AppTextButtonThemeData {
  static TextButtonThemeData light(BuildContext context) {
    return TextButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.black,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.darkRed,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontFamily: AppFonts.regular(context),
            fontSize: 16,
            color: AppColors.darkRed,
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          AppColors.black.withOpacity(0.1),
        ),
      ),
    );
  }

  static TextButtonThemeData dark(BuildContext context) {
    return TextButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.white,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.lightRed,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontFamily: AppFonts.regular(context),
            color: AppColors.lightRed,
            fontSize: 16,
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          AppColors.white.withOpacity(0.1),
        ),
      ),
    );
  }
}
