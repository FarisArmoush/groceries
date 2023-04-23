part of 'app_themes.dart';

class _AppFilledButtonThemeData {
  static final light = FilledButtonThemeData(
    style: ButtonStyle(
      shadowColor: MaterialStateProperty.all(
        ColorConstants.black,
      ),
      overlayColor: MaterialStateProperty.all(
        ColorConstants.white.withOpacity(0.25),
      ),
      elevation: MaterialStateProperty.all<double>(10),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        ColorConstants.red,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        AppTextStyles.poppinsRegular(
          color: ColorConstants.white,
          fontSize: 16,
        ),
      ),
    ),
  );

  static final dark = FilledButtonThemeData(
    style: ButtonStyle(
      shadowColor: MaterialStateProperty.all(
        ColorConstants.white.withOpacity(0.2),
      ),
      overlayColor: MaterialStateProperty.all(
        ColorConstants.white.withOpacity(0.3),
      ),
      elevation: MaterialStateProperty.all<double>(10),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.red,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        AppTextStyles.poppinsRegular(
          color: ColorConstants.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}
