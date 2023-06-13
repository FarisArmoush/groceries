import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/utils/exceptions/register_with_email_and_password_exception.dart';

void main() {
  group('RegisterWithEmailAndPasswordException', () {
    test('Create exception with default message', () {
      const exception = RegisterWithEmailAndPasswordException();
      expect(exception.message, 'Something went wrong...');
    });

    test('Create exception from error code "invalid-email"', () {
      final exception =
          RegisterWithEmailAndPasswordException.fromCode('invalid-email');
      expect(exception.message, 'Email is not valid or badly formatted.');
    });

    test('Create exception from error code "user-disabled"', () {
      final exception =
          RegisterWithEmailAndPasswordException.fromCode('user-disabled');
      expect(
        exception.message,
        'This user has been disabled. Please contact support for help.',
      );
    });

    test('Create exception from error code "email-already-in-use"', () {
      final exception = RegisterWithEmailAndPasswordException.fromCode(
        'email-already-in-use',
      );
      expect(exception.message, 'An account already exists for that email.');
    });

    test('Create exception from error code "operation-not-allowed"', () {
      final exception = RegisterWithEmailAndPasswordException.fromCode(
        'operation-not-allowed',
      );
      expect(
        exception.message,
        'Operation is not allowed.  Please contact support.',
      );
    });

    test('Create exception from error code "weak-password"', () {
      final exception =
          RegisterWithEmailAndPasswordException.fromCode('weak-password');
      expect(exception.message, 'Please enter a stronger password.');
    });

    test('Create exception from unknown error code', () {
      final exception =
          RegisterWithEmailAndPasswordException.fromCode('unknown-code');
      expect(exception.message, 'Something went wrong...');
    });
  });
}
