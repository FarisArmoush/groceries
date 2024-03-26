import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/exceptions/update_password_exception.dart';

void main() {
  group('UpdatePasswordException', () {
    test('Default constructor should have the default error message', () {
      const exception = UpdatePasswordException();
      expect(exception.message, isNull);
    });

    test('''
Factory constructor should create exception with custom message for weak password''',
        () {
      final exception = UpdatePasswordException.fromCode('weak-password');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.weakPassword,
      );
    });

    test('''
Factory constructor should create exception with custom message for requires recent login''',
        () {
      final exception =
          UpdatePasswordException.fromCode('requires-recent-login');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.requiresRecentLogin,
      );
    });

    test('''
Factory constructor should create exception with default message for unknown code''',
        () {
      final exception = UpdatePasswordException.fromCode('unknown-code');
      expect(
        exception.message,
        AppTranslations.errorMessages.defaultError,
      );
    });
  });
}
