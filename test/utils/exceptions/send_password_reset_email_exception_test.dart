import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/exceptions/send_password_reset_email_exception.dart';

void main() {
  group('SendPasswordResetEmailException', () {
    test('Create exception with default message', () {
      const exception = SendPasswordResetEmailException();
      expect(exception.message, 'Something went wrong...');
    });

    test('Create exception from error code "invalid-email"', () {
      final exception =
          SendPasswordResetEmailException.fromCode('invalid-email');
      expect(exception.message, 'Email is not valid or badly formatted.');
    });

    test('Create exception from error code "user-not-found"', () {
      final exception =
          SendPasswordResetEmailException.fromCode('user-not-found');
      expect(
        exception.message,
        'There is no user associated with the provided email.',
      );
    });

    test('Create exception from error code "unauthorized-continue-uri"', () {
      final exception =
          SendPasswordResetEmailException.fromCode('unauthorized-continue-uri');
      expect(
        exception.message,
        'Unauthorized continue uri message, contact support.',
      );
    });

    test('Create exception from error code "invalid-continue-uri"', () {
      final exception =
          SendPasswordResetEmailException.fromCode('invalid-continue-uri');
      expect(
        exception.message,
        'Invalid continue uri message, contact support.',
      );
    });

    test('Create exception from error code "missing-ios-bundle-id"', () {
      final exception =
          SendPasswordResetEmailException.fromCode('missing-ios-bundle-id');
      expect(exception.message, 'Missing IOS bundle id, contact support.');
    });

    test('Create exception from error code "missing-continue-uri"', () {
      final exception =
          SendPasswordResetEmailException.fromCode('missing-continue-uri');
      expect(exception.message, 'Missing continue URI, contact support.');
    });

    test('Create exception from error code "missing-android-pkg-name"', () {
      final exception =
          SendPasswordResetEmailException.fromCode('missing-android-pkg-name');
      expect(
        exception.message,
        'Missing android package name, contact support.',
      );
    });

    test('Create exception from unknown error code', () {
      final exception =
          SendPasswordResetEmailException.fromCode('unknown-code');
      expect(exception.message, 'Something went wrong...');
    });
  });
}
