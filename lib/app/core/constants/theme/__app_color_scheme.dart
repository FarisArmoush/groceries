part of 'app_themes.dart';

class _AppColorScheme {
  static final light = ColorScheme.fromSwatch().copyWith(
    secondary: ColorConstants.white,
    brightness: Brightness.light,
    error: ColorConstants.red,
  );
  static final dark = ColorScheme.fromSwatch().copyWith(
    secondary: ColorConstants.black,
    brightness: Brightness.dark,
    error: ColorConstants.red,
  );
}
