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
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstants.lightGrey;
          }
          return ColorConstants.black;
        },
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
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
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstants.lightGrey;
          }
          return ColorConstants.white;
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstants.white;
          }
          return ColorConstants.black;
        },
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
