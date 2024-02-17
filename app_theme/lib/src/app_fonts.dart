import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app_ui/app_theme.dart';

/// A class that provides font family names based on the current locale.
abstract final class AppFonts {
  /// Returns the font family name for the thin font
  /// weight based on the current locale.
  static String thin(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsThin;
    } else {
      return FontFamily.notoSansArabicThin;
    }
  }

  /// Returns the font family name for the extra light font
  /// weight based on the current locale.
  static String extraLight(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsExtraLight;
    } else {
      return FontFamily.poppinsExtraLight;
    }
  }

  /// Returns the font family name for the light font
  /// weight based on the current locale.
  static String light(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsLight;
    } else {
      return FontFamily.notoSansArabicLight;
    }
  }

  /// Returns the font family name for the regular font
  /// weight based on the current locale.
  static String regular(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsRegular;
    } else {
      return FontFamily.notoSansArabicRegular;
    }
  }

  /// Returns the font family name for the medium font
  /// weight based on the current locale.
  static String medium(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsMedium;
    } else {
      return FontFamily.notoSansArabicMedium;
    }
  }

  /// Returns the font family name for the semi-bold font
  /// weight based on the current locale.
  static String semiBold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsSemiBold;
    } else {
      return FontFamily.notoSansArabicSemiBold;
    }
  }

  /// Returns the font family name for the bold font
  /// weight based on the current locale.
  static String bold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsBold;
    } else {
      return FontFamily.notoSansArabicBold;
    }
  }

  /// Returns the font family name for the extra bold
  /// font weight based on the current locale.
  static String extraBold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsExtraBold;
    } else {
      return FontFamily.notoSansArabicExtraBold;
    }
  }

  /// Returns the font family name for the black font
  /// weight based on the current locale.
  static String black(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsBlack;
    } else {
      return FontFamily.notoSansArabicBlack;
    }
  }

  /// Determines if the current locale is not Arabic.
  ///
  /// Returns `true` if the current locale is not Arabic, `false` otherwise.
  static bool _isNotArabic(BuildContext context) {
    return context.locale != const Locale('ar');
  }
}
