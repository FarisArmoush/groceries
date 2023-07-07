import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/exceptions/login_with_google_exception.dart';

void main() {
  group('LoginWithGoogleException', () {
    test('exception with default message', () {
      const exception = LoginWithGoogleException();
      expect(exception.message, 'An unknown exception occurred.');
    });

    test('exception from error code "account-exists-with-different-credential"',
        () {
      final exception = LoginWithGoogleException.fromCode(
        'account-exists-with-different-credential',
      );
      expect(exception.message, 'Account exists with different credentials.');
    });

    test('exception from error code "invalid-credential"', () {
      final exception = LoginWithGoogleException.fromCode('invalid-credential');
      expect(
        exception.message,
        'The credential received is malformed or has expired.',
      );
    });

    test('exception from error code "operation-not-allowed"', () {
      final exception =
          LoginWithGoogleException.fromCode('operation-not-allowed');
      expect(
        exception.message,
        'Operation is not allowed.  Please contact support.',
      );
    });

    test('exception from error code "user-disabled"', () {
      final exception = LoginWithGoogleException.fromCode('user-disabled');
      expect(
        exception.message,
        'This user has been disabled. Please contact support for help.',
      );
    });

    test(' exception from error code "user-not-found"', () {
      final exception = LoginWithGoogleException.fromCode('user-not-found');
      expect(
        exception.message,
        'Email is not found, please  an account.',
      );
    });

    test('exception from error code "wrong-password"', () {
      final exception = LoginWithGoogleException.fromCode('wrong-password');
      expect(exception.message, 'Incorrect password, please try again.');
    });

    test('exception from error code "invalid-verification-code"', () {
      final exception =
          LoginWithGoogleException.fromCode('invalid-verification-code');
      expect(
        exception.message,
        'The credential verification code received is invalid.',
      );
    });

    test('exception from error code "invalid-verification-id"', () {
      final exception =
          LoginWithGoogleException.fromCode('invalid-verification-id');
      expect(
        exception.message,
        'The credential verification ID received is invalid.',
      );
    });

    test('exception from unknown error code', () {
      final exception = LoginWithGoogleException.fromCode('unknown-code');
      expect(exception.message, 'An unknown exception occurred.');
    });
  });
}
