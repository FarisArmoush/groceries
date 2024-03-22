import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';

void main() {
  group('LoginWithEmailAndPasswordException', () {
    test('Default constructor should have the default error message', () {
      const exception = LoginWithEmailAndPasswordException();
      expect(exception.message, isNull);
    });

    test('''
Factory constructor should create exception with custom message for invalid email''',
        () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('invalid-email');
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
          LoginWithEmailAndPasswordException.fromCode('user-disabled');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.userDisabled,
      );
    });

    test('''
Factory constructor should create exception with custom message for user not found''',
        () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('user-not-found');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.userNotFound,
      );
    });

    test('''
Factory constructor should create exception with custom message for wrong password''',
        () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('wrong-password');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.wrongPassword,
      );
    });

    test('''
Factory constructor should create exception with default message for unknown code''',
        () {
      final exception =
          LoginWithEmailAndPasswordException.fromCode('unknown-code');
      expect(
        exception.message,
        AppTranslations.errorMessages.defaultErrorMessage,
      );
    });
  });
}
