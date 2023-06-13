import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';

void main() {
  group('LoginWithEmailAndPasswordException', () {
    test('Create exception with default message', () {
      const exception = LoginWithEmailAndPasswordException();
      expect(exception.message, 'An unknown exception occurred.');
    });

    test('Create exception from error code "invalid-email"', () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('invalid-email');
      expect(exception.message, 'Email is not valid or badly formatted.');
    });

    test('Create exception from error code "user-disabled"', () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('user-disabled');
      expect(
        exception.message,
        'This user has been disabled. Please contact support for help.',
      );
    });

    test('Create exception from error code "user-not-found"', () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('user-not-found');
      expect(
        exception.message,
        'Email is not found, please create an account.',
      );
    });

    test('Create exception from error code "wrong-password"', () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('wrong-password');
      expect(exception.message, 'Incorrect password, please try again.');
    });

    test('Create exception from unknown error code', () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('unknown-code');
      expect(exception.message, 'An unknown exception occurred.');
    });
  });
}
