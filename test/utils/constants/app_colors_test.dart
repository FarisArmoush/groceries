import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/constants/app_colors.dart';

void main() {
  group('AppColors', () {
    test('black should be Color(0xFF000000)', () {
      expect(AppColors.black, const Color(0xFF000000));
    });

    test('white should be Color(0xFFFFFFFF)', () {
      expect(AppColors.white, const Color(0xFFFFFFFF));
    });

    test('darkRed should be Color(0xFFB00808)', () {
      expect(AppColors.darkRed, const Color(0xFFB00808));
    });

    test('lightRed should be Color(0xFFF44336)', () {
      expect(AppColors.lightRed, const Color(0xFFF44336));
    });

    test('lightGrey should be Color(0xFF909090)', () {
      expect(AppColors.lightGrey, const Color(0xFF909090));
    });

    test('veryLightGrey should be Color(0xFFEFEFEF)', () {
      expect(AppColors.veryLightGrey, const Color(0xFFEFEFEF));
    });

    test('darkGrey should be Color(0xFF121212)', () {
      expect(AppColors.darkGrey, const Color(0xFF121212));
    });

    test('cardDarkGrey should be Color(0xFF1E1E1E)', () {
      expect(AppColors.cardDarkGrey, const Color(0xFF1E1E1E));
    });
  });
}
