part of '../app_extensions.dart';

extension PaddingExtensions on Widget {
  Padding symmetricPadding({
    double vertical = 0,
    double horizontal = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: this,
    );
  }

  Padding allPadding(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Padding directionalOnlyPadding({
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
