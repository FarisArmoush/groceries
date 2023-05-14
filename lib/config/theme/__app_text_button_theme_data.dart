part of 'app_themes.dart';

class _AppTextButtonThemeData {
  static final light = TextButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(
        AppColors.black,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        AppColors.darkRed,
      ),
      // textStyle: MaterialStateProperty.all<TextStyle>(
      //   const TextStyle(
      //     fontFamily: FontFamily.poppinsRegular,
      //     fontSize: 16,
      //     color: AppColors.black,
      //   ),
      // ),
      overlayColor: MaterialStateProperty.all<Color>(
        AppColors.black.withOpacity(0.1),
      ),
    ),
  );
  static final dark = TextButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(
        AppColors.white,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        AppColors.lightRed,
      ),
      // textStyle: MaterialStateProperty.all<TextStyle>(
      //   AppTextStyles.regular(
      //     color: AppColors.white,
      //     fontSize: 16,
      //   ),
      // ),
      overlayColor: MaterialStateProperty.all<Color>(
        AppColors.white.withOpacity(0.1),
      ),
    ),
  );
}
