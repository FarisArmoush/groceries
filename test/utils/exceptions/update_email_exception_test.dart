import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/exceptions/update_email_exception.dart';

void main() {
  group('UpdateEmailException', () {
    test('Create exception with default message', () {
      const exception = UpdateEmailException();
      expect(exception.message, 'Something went wrong...');
    });

    test('Create exception from error code "invalid-email"', () {
      final exception = UpdateEmailException.fromCode('invalid-email');
      expect(exception.message, 'Email is invalid or badly formatted.');
    });

    test('Create exception from error code "requires-recent-login"', () {
      final exception = UpdateEmailException.fromCode('requires-recent-login');
      expect(exception.message, 'Email is invalid or badly formatted.');
    });

    test('Create exception from error code "email-already-in-use"', () {
      final exception = UpdateEmailException.fromCode('email-already-in-use');
      expect(exception.message, 'Email is already in use by another account.');
    });

    test('Create exception from unknown error code', () {
      final exception = UpdateEmailException.fromCode('unknown-code');
      expect(exception.message, 'Something went wrong...');
    });
  });
}
