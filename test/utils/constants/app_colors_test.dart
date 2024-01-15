import 'package:flutter/widgets.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:test/test.dart';

void main() {
  group('AppColors', () {
    test('AppColors.black', () {
      expect(AppColors.black, equals(const Color.fromARGB(255, 0, 0, 0)));
    });

    test('AppColors.white', () {
      expect(AppColors.white, equals(const Color.fromARGB(255, 255, 255, 255)));
    });

    test('AppColors.darkRed', () {
      expect(AppColors.darkRed, equals(const Color.fromARGB(255, 176, 8, 8)));
    });

    test('AppColors.lightRed', () {
      expect(
        AppColors.lightRed,
        equals(const Color.fromARGB(255, 244, 67, 54)),
      );
    });

    test('AppColors.lightGrey', () {
      expect(
        AppColors.lightGrey,
        equals(const Color.fromARGB(255, 144, 144, 144)),
      );
    });

    test('AppColors.offWhite', () {
      expect(
        AppColors.offWhite,
        equals(const Color.fromARGB(255, 239, 239, 239)),
      );
    });

    test('AppColors.darkGrey', () {
      expect(AppColors.darkGrey, equals(const Color.fromARGB(255, 18, 18, 18)));
    });

    test('AppColors.cardDarkGrey', () {
      expect(
        AppColors.cardDarkGrey,
        equals(const Color.fromARGB(255, 30, 30, 30)),
      );
    });

    test('AppColors.transparent', () {
      expect(AppColors.transparent, equals(const Color.fromARGB(0, 0, 0, 0)));
    });
  });
}
