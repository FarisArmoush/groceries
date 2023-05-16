part of 'app_themes.dart';

class _AppFilledButtonThemeData {
  static FilledButtonThemeData light(BuildContext context) {
    return FilledButtonThemeData(
      style: ButtonStyle(
        shadowColor: MaterialStateProperty.all(
          AppColors.black,
        ),
        overlayColor: MaterialStateProperty.all(
          AppColors.white.withOpacity(0.25),
        ),
        elevation: MaterialStateProperty.all<double>(10),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          AppColors.darkRed,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontFamily: AppFonts.regular(context),
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  static FilledButtonThemeData dark(BuildContext context) {
    return FilledButtonThemeData(
      style: ButtonStyle(
        shadowColor: MaterialStateProperty.all(
          AppColors.white.withOpacity(0.2),
        ),
        overlayColor: MaterialStateProperty.all(
          AppColors.white.withOpacity(0.3),
        ),
        elevation: MaterialStateProperty.all<double>(10),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          AppColors.lightRed,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontFamily: AppFonts.regular(context),
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
