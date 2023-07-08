part of 'app_themes.dart';

class _AppOutlinedButtonThemeData {
  static OutlinedButtonThemeData light(BuildContext context) {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        splashFactory: _splashFactory,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            color: AppColors.lightGrey,
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          AppColors.black.withOpacity(0.15),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.black,
        ),
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.black,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontFamily: AppFonts.regular(context),
            color: AppColors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData dark(BuildContext context) {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        splashFactory: _splashFactory,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            color: AppColors.lightGrey,
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          AppColors.white.withOpacity(0.25),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.white,
        ),
        iconColor: MaterialStateProperty.all<Color>(
          AppColors.white,
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

  static const _splashFactory = NoSplash.splashFactory;
}
