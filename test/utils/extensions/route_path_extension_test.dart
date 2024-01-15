import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

void main() {
  group('RoutePath', () {
    test('path returns the correct formatted path', () {
      final result = 'example'.path();
      expect(result, '/example');
    });

    test('path handles an empty string correctly', () {
      final result = ''.path();
      expect(result, '/');
    });

    test('path handles special characters correctly', () {
      final result = 'special/path'.path();
      expect(result, '/special/path');
    });
  });
}
