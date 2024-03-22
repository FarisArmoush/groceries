import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/exceptions/update_email_exception.dart';

void main() {
  group('UpdateEmailException', () {
    test('Default constructor should have the default error message', () {
      const exception = UpdateEmailException();
      expect(exception.message, isNull);
    });

    test('''
Factory constructor should create exception with custom message for invalid email''',
        () {
      final exception = UpdateEmailException.fromCode('invalid-email');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.invalidEmail,
      );
    });

    test('''
Factory constructor should create exception with custom message for requires recent login''',
        () {
      final exception = UpdateEmailException.fromCode('requires-recent-login');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.requiresRecentLogin,
      );
    });

    test('''
Factory constructor should create exception with custom message for email already in use''',
        () {
      final exception = UpdateEmailException.fromCode('email-already-in-use');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.emailAlreadyInUse,
      );
    });

    test('''
Factory constructor should create exception with default message for unknown code''',
        () {
      final exception = UpdateEmailException.fromCode('unknown-code');
      expect(
        exception.message,
        AppTranslations.errorMessages.defaultErrorMessage,
      );
    });
  });
}
