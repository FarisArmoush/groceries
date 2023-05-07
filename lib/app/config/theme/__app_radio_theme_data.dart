part of 'app_themes.dart';

class _AppRadioThemeData {
  static final light = RadioThemeData(
    fillColor: MaterialStateProperty.all<Color>(
      AppColors.lightGrey,
    ),
  );

  static final dark = RadioThemeData(
    fillColor: MaterialStateProperty.all<Color>(
      AppColors.white,
    ),
  );
}
