import 'package:easy_localization/easy_localization.dart';
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
  static TextStyle thin({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsThin
          : FontFamily.notoSansArabicThin,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Extra-Light font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[200]`
  static TextStyle extraLight({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsExtraLight
          : FontFamily.notoSansArabicExtraLight,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Light font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[300]`
  static TextStyle light({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsLight
          : FontFamily.notoSansArabicLight,
      color: color,
      fontSize: fontSize,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Regular font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[400]`
  static TextStyle regular({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsRegular
          : FontFamily.notoSansArabicRegular,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Medium font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[500]`
  static TextStyle medium({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsMedium
          : FontFamily.notoSansArabicMedium,
      color: color,
      fontSize: fontSize,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Semi-Bold font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[600]`
  static TextStyle semiBold({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsSemiBold
          : FontFamily.notoSansArabicSemiBold,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Bold font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[700]`
  static TextStyle bold({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsBold
          : FontFamily.notoSansArabicBold,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Extra-Bold font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[800]`
  static TextStyle extraBold({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsExtraBold
          : FontFamily.notoSansArabicExtraBold,
      fontSize: fontSize,
      color: color,
    );
  }

  /// Returns a `TextStyle` object with the Poppins Black font family,
  /// with the specified `color` and `fontSize`.
  ///
  /// `[900]`
  static TextStyle black({
    required BuildContext context,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
      fontFamily: context.locale.languageCode != 'ar'
          ? FontFamily.poppinsBlack
          : FontFamily.poppinsBlack,
      color: color,
      fontSize: fontSize,
    );
  }
}
