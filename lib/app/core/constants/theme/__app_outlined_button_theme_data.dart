part of 'app_themes.dart';

class _AppOutlinedButtonThemeData {
  static final light = OutlinedButtonThemeData(
    style: ButtonStyle(
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: ColorConstants.lightGrey,
        ),
      ),
      overlayColor: MaterialStateProperty.all(
        ColorConstants.backgroundLightGrey,
      ),
      foregroundColor: MaterialStateProperty.all(
        ColorConstants.black,
      ),
      iconColor: MaterialStateProperty.all<Color>(
        ColorConstants.black,
      ),
      textStyle: MaterialStateProperty.all(
        AppTextStyles.poppinsRegular(
          color: ColorConstants.black,
          fontSize: 16,
        ),
      ),
    ),
  );

  static final dark = OutlinedButtonThemeData(
    style: ButtonStyle(
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: ColorConstants.lightGrey,
        ),
      ),
      overlayColor: MaterialStateProperty.all(
        ColorConstants.white.withOpacity(0.25),
      ),
      foregroundColor: MaterialStateProperty.all(
        ColorConstants.white,
      ),
      iconColor: MaterialStateProperty.all<Color>(
        ColorConstants.white,
      ),
      textStyle: MaterialStateProperty.all(
        AppTextStyles.poppinsRegular(
          color: ColorConstants.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}
