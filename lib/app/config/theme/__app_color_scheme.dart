part of 'app_themes.dart';

class _AppColorScheme {
  static final light = ColorScheme.fromSwatch().copyWith(
    secondary: ColorConstants.white,
    brightness: Brightness.light,
    error: ColorConstants.red,
  );
  static final dark = ColorScheme.fromSwatch().copyWith(
    brightness: Brightness.dark,
    primary: ColorConstants.red,
    secondary: ColorConstants.white,
    primaryContainer: ColorConstants.cardDarkGrey,
    onBackground: ColorConstants.white,
    background: ColorConstants.darkGrey,
    shadow: ColorConstants.white.withOpacity(0.015),
    outline: ColorConstants.lightGrey,
  );
}
