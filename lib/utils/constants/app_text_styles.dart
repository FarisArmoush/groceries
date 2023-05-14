import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/fonts.gen.dart';

/// Provides a set of pre-defined text styles using the Poppins and NanumBrush
/// font families. All methods return a `TextStyle` object with the specified
/// `fontSize` and `color`, and a specific font family.
class AppTextStyles {
  AppTextStyles._();

  /// Returns a `TextStyle` object with the Poppins Thin font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[100]`
  static TextStyle poppinsThin({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsThin,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Extra-Light font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[200]`
  static TextStyle poppinsExtraLight({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsExtraLight,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Light font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[300]`
  static TextStyle poppinsLight({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsLight,
      color: color,
      fontSize: fontSize,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Regular font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[400]`
  static TextStyle poppinsRegular({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsRegular,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Medium font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[500]`
  static TextStyle poppinsMedium({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsMedium,
      color: color,
      fontSize: fontSize,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Semi-Bold font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[600]`
  static TextStyle poppinsSemiBold({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsSemiBold,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Bold font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[700]`
  static TextStyle poppinsBold({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsBold,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Extra-Bold font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[800]`
  static TextStyle poppinsExtraBold({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsExtraBold,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Black font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[900]`
  static TextStyle poppinsBlack({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppinsBlack,
      color: color,
      fontSize: fontSize,
    );
  }

  /// Returns a `TextStyle` object with the Nanum Brush font family,
  /// with the specified `color` and `fontSize`.
  static TextStyle nanumBrush({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.nanumBrush,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Nanum Pen font family,
  /// with the specified `color` and `fontSize`.
  static TextStyle nanumPen({
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: FontFamily.nanumPen,
      fontSize: fontSize,
      color: color,
    );
  }
}
