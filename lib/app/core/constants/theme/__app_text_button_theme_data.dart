part of 'app_themes.dart';

class _AppTextButtonThemeData {
  static final light = TextButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(
        ColorConstants.black,
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
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          fontFamily: FontFamily.poppinsRegular,
          fontSize: 16,
          color: ColorConstants.white,
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        ColorConstants.white.withOpacity(0.1),
      ),
    ),
  );
}
