import 'package:flutter/material.dart';

/// A Flutter extension on [String] that provides a convenient way to convert a
/// hexadecimal color code into a [Color] object.
///
/// The extension method [toColor] takes a hexadecimal color code in the format
/// "#RRGGBB" or "#AARRGGBB" and returns a corresponding [Color] object. If the
/// input is not in the correct format, the method returns null.
extension ColorExtension on String {
  Color? toColor() {
    var hexColor = replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    if (hexColor.length == 8) {
      return Color(
        int.parse('0x$hexColor'),
      );
    }
    return null;
  }
}
