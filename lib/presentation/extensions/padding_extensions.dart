import 'package:flutter/material.dart';

/// Extension providing utility methods for applying padding to widgets.
extension PaddingExtensions on Widget {
  /// Applies symmetric padding around the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello, World!').symmetricPadding(vertical: 10, horizontal: 20);
  /// ```
  Padding symmetricPadding({
    double vertical = 0,
    double horizontal = 0,
  }) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: this,
    );
  }

  /// Applies padding to all sides of the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello, World!').allPadding(10),
  /// ```
  Padding allPadding(double value) {
    return Padding(
      padding: EdgeInsetsDirectional.all(value),
      child: this,
    );
  }

  /// Applies padding to specific sides of the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello, World!').onlyPadding(start: 10, end: 20, top: 5, bottom: 15);
  /// ```
  Padding onlyPadding({
    double start = 0,
    double end = 0,
    double top = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: start,
        end: end,
        top: top,
        bottom: bottom,
      ),
      child: this,
    );
  }
}
