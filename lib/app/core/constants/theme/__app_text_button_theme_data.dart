part of 'app_themes.dart';

class _AppTextButtonThemeData {
  static final light = TextButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(
        ColorConstants.black,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        ColorConstants.red,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          fontFamily: FontFamily.poppinsRegular,
          fontSize: 16,
          color: ColorConstants.black,
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        ColorConstants.black.withOpacity(0.1),
      ),
    ),
  );
  static final dark = TextButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(
        ColorConstants.white,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.red,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        AppTextStyles.poppinsRegular(
          color: ColorConstants.white,
          fontSize: 16,
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        ColorConstants.white.withOpacity(0.1),
      ),
    ),
  );
}
