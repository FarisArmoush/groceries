part of 'app_themes.dart';

class _AppIconButtonThemeData {
  static const light = IconButtonThemeData(
    style: ButtonStyle(
      splashFactory: _splashFactory,
    ),
  );
  static const dark = IconButtonThemeData(
    style: ButtonStyle(
      splashFactory: _splashFactory,
    ),
  );

  static const _splashFactory = NoSplash.splashFactory;
}
