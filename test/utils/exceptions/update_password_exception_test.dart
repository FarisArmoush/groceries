import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/exceptions/update_password_exception.dart';

void main() {
  group('UpdatePasswordException', () {
    test('default constructor should have default message', () {
      const exception = UpdatePasswordException();
      expect(exception.message, equals('Something went wrong..'));
    });

    test('constructor with message should set the provided message', () {
      const exception = UpdatePasswordException('Custom message');
      expect(exception.message, equals('Custom message'));
    });

    test('"weak-password" code test', () {
      final exception = UpdatePasswordException.fromCode('weak-password');
      expect(exception.message, equals('Weak Password'));
    });

    test('"requires-recent-login" code test', () {
      final exception =
          UpdatePasswordException.fromCode('requires-recent-login');
      expect(exception.message, equals('Requires Recent Login'));
    });

    test('factory method with unknown code return exception default message',
        () {
      final exception = UpdatePasswordException.fromCode('unknown-code');
      expect(exception.message, equals('Something went wrong..'));
    });
  });
}
