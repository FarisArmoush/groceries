import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/fonts.gen.dart';

class AppFonts {
  AppFonts._();

  static String thin(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsThin;
    } else {
      return FontFamily.notoSansArabicThin;
    }
  }

  static String extraLight(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsExtraLight;
    } else {
      return FontFamily.poppinsExtraLight;
    }
  }

  static String light(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsLight;
    } else {
      return FontFamily.notoSansArabicLight;
    }
  }

  static String regular(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsRegular;
    } else {
      return FontFamily.notoSansArabicRegular;
    }
  }

  static String medium(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsMedium;
    } else {
      return FontFamily.notoSansArabicMedium;
    }
  }

  static String semiBold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsSemiBold;
    } else {
      return FontFamily.notoSansArabicSemiBold;
    }
  }

  static String bold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsBold;
    } else {
      return FontFamily.notoSansArabicBold;
    }
  }

  static String extraBold(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsExtraBold;
    } else {
      return FontFamily.notoSansArabicExtraBold;
    }
  }

  static String black(BuildContext context) {
    if (_isNotArabic(context)) {
      return FontFamily.poppinsBlack;
    } else {
      return FontFamily.notoSansArabicBlack;
    }
  }

  /// This condition determines which font family to use, based upon
  /// the current `Locale`
  static bool _isNotArabic(BuildContext context) {
    return context.locale != const Locale('ar');
  }
}
