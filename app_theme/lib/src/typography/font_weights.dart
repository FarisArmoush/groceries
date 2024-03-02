import 'package:flutter/widgets.dart';

/// The thickness of the glyphs used to draw the text.
abstract final class AppFontWeights {
  /// FontWeight value of `w100`
  static const thin = FontWeight.w100;

  /// FontWeight value of `w200`
  static const extraLight = FontWeight.w200;

  /// FontWeight value of `w300`
  static const light = FontWeight.w300;

  /// FontWeight value of `w400`
  static const regular = FontWeight.w400;

  /// FontWeight value of `w500`
  static const medium = FontWeight.w500;

  /// FontWeight value of `w600`
  static const semiBold = FontWeight.w600;

  /// FontWeight value of `w700`
  static const bold = FontWeight.w700;

  /// FontWeight value of `w800`
  static const extraBold = FontWeight.w800;

  /// FontWeight value of `w900`
  static const black = FontWeight.w900;
}
