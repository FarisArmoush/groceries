import 'package:flutter/material.dart';
import 'package:groceries_theme/src/typography/font_weights.dart';
import 'package:test/test.dart';

void main() {
  group('AppFontWeights', () {
    test('Font weight values', () {
      expect(AppFontWeights.black, FontWeight.w900);
      expect(AppFontWeights.extraBold, FontWeight.w800);
      expect(AppFontWeights.bold, FontWeight.w700);
      expect(AppFontWeights.semiBold, FontWeight.w600);
      expect(AppFontWeights.medium, FontWeight.w500);
      expect(AppFontWeights.regular, FontWeight.w400);
      expect(AppFontWeights.light, FontWeight.w300);
      expect(AppFontWeights.extraLight, FontWeight.w200);
      expect(AppFontWeights.thin, FontWeight.w100);
    });
  });
}
