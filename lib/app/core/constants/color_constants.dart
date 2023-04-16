import 'package:flutter/material.dart';
import 'package:groceries/app/core/extensions/color_extension.dart';

/// A class that contains constants for commonly used colors in the app.
class ColorConstants {
  ColorConstants._();

  /// #000000
  ///
  /// Solid Black
  static final Color black = '#000000'.toColor()!;

  /// #000000
  ///
  /// Solid Black with 70% opacity
  static final Color black70 = '#000000'.toColor()!.withOpacity(0.7);

  /// #FFFFFF
  ///
  /// Solid White
  static final Color white = '#FFFFFF'.toColor()!;

  /// #B00808
  ///
  /// App's Primary Red Color
  static final Color red = '#B00808'.toColor()!;

  /// #808080
  ///
  /// Light Grey
  static final Color lightGrey = '#808080'.toColor()!;

  /// #E8E8E8
  ///
  /// Background light grey, used for views background.
  static final Color backgroundLightGrey = '#E8E8E8'.toColor()!;

  /// #D9D9D9
  ///
  /// Off White
  static final Color offWhite = '#D9D9D9'.toColor()!;

  /// #EFEFEF
  ///
  /// Very Light Grey
  static final Color veryLightGrey = '#EFEFEF'.toColor()!;

  /// #1DA1F2
  ///
  /// Twitter's logo blue color
  static final Color twitterBlue = '#1DA1F2'.toColor()!;

  /// #121212
  ///
  /// Background dark grey, used for views background.
  static final Color darkGrey = '#121212'.toColor()!;

  /// #1e1e1e
  ///
  /// Card dark drey used of cards and list tiles
  static final Color cardDarkGrey = '#1e1e1e'.toColor()!;

  /// A gradient that starts from white and ends at black.
  static final LinearGradient whiteToBlackGradiednt = LinearGradient(
    colors: <Color>[
      black.withOpacity(0.14),
      black.withOpacity(0.9),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
