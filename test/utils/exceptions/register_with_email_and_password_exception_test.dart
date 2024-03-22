import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/exceptions/register_with_email_and_password_exception.dart';

void main() {
  group('RegisterWithEmailAndPasswordException', () {
    test('Default constructor should have the default error message', () {
      const exception = RegisterWithEmailAndPasswordException();
      expect(exception.message, isNull);
    });

    test('''
Factory constructor should create exception with custom message for invalid email''',
        () {
      final exception =
          RegisterWithEmailAndPasswordException.fromCode('invalid-email');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.invalidEmail,
      );
    });

    test('''
Factory constructor should create exception with custom message for user disabled''',
        () {
      final exception =
          RegisterWithEmailAndPasswordException.fromCode('user-disabled');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.userDisabled,
      );
    });

    test('''
Factory constructor should create exception with custom message for email already in use''',
        () {
      final exception = RegisterWithEmailAndPasswordException.fromCode(
        'email-already-in-use',
      );
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.emailAlreadyInUse,
      );
    });

    test('''
Factory constructor should create exception with custom message for operation not allowed''',
        () {
      final exception = RegisterWithEmailAndPasswordException.fromCode(
        'operation-not-allowed',
      );
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.operationNotAllowed,
      );
    });

    test('''
Factory constructor should create exception with custom message for weak password''',
        () {
      final exception =
          RegisterWithEmailAndPasswordException.fromCode('weak-password');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.weakPassword,
      );
    });

    test('''
Factory constructor should create exception with default message for unknown code''',
        () {
      final exception =
          RegisterWithEmailAndPasswordException.fromCode('unknown-code');
      expect(
        exception.message,
        AppTranslations.errorMessages.defaultErrorMessage,
      );
    });
  });
}
