import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

void main() {
  group('DurationSimplifier', () {
    test('milliseconds returns the correct Duration', () {
      final result = 500.milliseconds;
      expect(result, const Duration(milliseconds: 500));
    });

    test('seconds returns the correct Duration', () {
      final result = 10.seconds;
      expect(result, const Duration(seconds: 10));
    });

    test('minutes returns the correct Duration', () {
      final result = 2.minutes;
      expect(result, const Duration(minutes: 2));
    });

    test('microseconds returns the correct Duration', () {
      final result = 1000.microseconds;
      expect(result, const Duration(microseconds: 1000));
    });

    test('days returns the correct Duration', () {
      final result = 3.days;
      expect(result, const Duration(days: 3));
    });

    test('hours returns the correct Duration', () {
      final result = 6.hours;
      expect(result, const Duration(hours: 6));
    });
  });
}
