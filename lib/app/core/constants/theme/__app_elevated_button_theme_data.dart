part of 'app_themes.dart';

class __AppElevatedButtonThemeData {
  __AppElevatedButtonThemeData._();

  static final light = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        ColorConstants.black,
      ),
      foregroundColor: MaterialStateProperty.all(
        ColorConstants.white,
      ),
      overlayColor: MaterialStateProperty.all(
        ColorConstants.white.withOpacity(0.12),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        AppTextStyles.poppinsRegular(
          color: ColorConstants.white,
          fontSize: 16,
        ),
      ),
      iconColor: MaterialStateProperty.all<Color>(
        ColorConstants.white,
      ),
    ),
  );

  static final dark = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        ColorConstants.white,
      ),
      foregroundColor: MaterialStateProperty.all(
        ColorConstants.black,
      ),
      overlayColor: MaterialStateProperty.all(
        ColorConstants.black.withOpacity(0.12),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        AppTextStyles.poppinsRegular(
          color: ColorConstants.white,
          fontSize: 16,
        ),
      ),
      iconColor: MaterialStateProperty.all<Color>(
        ColorConstants.white,
      ),
    ),
  );
}
