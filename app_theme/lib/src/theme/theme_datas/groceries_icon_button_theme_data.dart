import 'package:flutter/material.dart';

abstract final class GroceriesIconButtonThemeData {
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
