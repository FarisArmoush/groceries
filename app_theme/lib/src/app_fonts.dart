import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app_ui/app_theme.dart';

/// A class that provides font family names based on the current locale.
abstract final class AppFonts {
  /// Returns the font family name for the thin font
  /// weight based on the current locale.
  static String thin(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.notoSansArabic;
    }
  }

  /// Returns the font family name for the extra light font
  /// weight based on the current locale.
  static String extra(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.poppins;
    }
  }

  /// Returns the font family name for the light font
  /// weight based on the current locale.
  static String light(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.notoSansArabic;
    }
  }

  /// Returns the font family name for the regular font
  /// weight based on the current locale.
  static String regular(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.notoSansArabic;
    }
  }

  /// Returns the font family name for the medium font
  /// weight based on the current locale.
  static String medium(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.notoSansArabic;
    }
  }

  /// Returns the font family name for the semi-bold font
  /// weight based on the current locale.
  static String semiBold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.notoSansArabic;
    }
  }

  /// Returns the font family name for the bold font
  /// weight based on the current locale.
  static String bold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.notoSansArabic;
    }
  }

  /// Returns the font family name for the extra bold
  /// font weight based on the current locale.
  static String extraBold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.notoSansArabic;
    }
  }

  /// Returns the font family name for the black font
  /// weight based on the current locale.
  static String black(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppins;
    } else {
      return FontFamily.notoSansArabic;
    }
  }

  /// Determines if the current locale is not Arabic.
  ///
  /// Returns `true` if the current locale is not Arabic, `false` otherwise.
  static bool _isNotArabic(BuildContext context) {
    return context.locale != const Locale('ar');
  }
}
