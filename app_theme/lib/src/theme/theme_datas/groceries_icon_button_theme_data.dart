import 'package:flutter/material.dart';
import 'package:groceries_theme/src/constants/app_splash_factory.dart';

abstract final class GroceriesIconButtonThemeData {
  static const light = IconButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
    ),
  );
  static const dark = IconButtonThemeData(
    style: ButtonStyle(
      splashFactory: appSplashFactory,
    ),
  );
}
