import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

void main() {
  group('NumExtensions', () {
    test('isLessThan returns true for a smaller value', () {
      final result = 5.isLessThan(10);
      expect(result, true);
    });

    test('isLessThan returns false for an equal value', () {
      final result = 10.isLessThan(10);
      expect(result, true);
    });

    test('isLessThan returns false for a greater value', () {
      final result = 15.isLessThan(10);
      expect(result, false);
    });

    test('isGreaterThan returns true for a greater value', () {
      final result = 15.isGreaterThan(10);
      expect(result, true);
    });

    test('isGreaterThan returns false for an equal value', () {
      final result = 10.isGreaterThan(10);
      expect(result, true);
    });

    test('isGreaterThan returns false for a smaller value', () {
      final result = 5.isGreaterThan(10);
      expect(result, false);
    });
  });
}
