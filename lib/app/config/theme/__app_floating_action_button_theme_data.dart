part of 'app_themes.dart';

class _AppFloatingActionButtonThemeData {
  static final light = FloatingActionButtonThemeData(
    backgroundColor: ColorConstants.red,
    extendedTextStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.white,
      fontSize: 16,
    ),
  );
  static final dark = FloatingActionButtonThemeData(
    backgroundColor: Colors.red,
    extendedTextStyle: AppTextStyles.poppinsRegular(
      color: ColorConstants.white,
      fontSize: 16,
    ),
  );
}
