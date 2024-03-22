import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/exceptions/send_password_reset_email_exception.dart';

void main() {
  group('SendPasswordResetEmailException', () {
    test('Default constructor should have the default error message', () {
      const exception = SendPasswordResetEmailException();
      expect(exception.message, isNull);
    });

    test('''
Factory constructor should create exception with custom message for invalid email''',
        () {
      final exception =
          SendPasswordResetEmailException.fromCode('invalid-email');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.invalidEmail,
      );
    });

    test('''
Factory constructor should create exception with custom message for user not found''',
        () {
      final exception =
          SendPasswordResetEmailException.fromCode('user-not-found');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.userNotFound,
      );
    });

    test('''
Factory constructor should create exception with custom message for unauthorized continue uri''',
        () {
      final exception =
          SendPasswordResetEmailException.fromCode('unauthorized-continue-uri');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.unauthorizedContinueUri,
      );
    });

    test('''
Factory constructor should create exception with custom message for invalid continue uri''',
        () {
      final exception =
          SendPasswordResetEmailException.fromCode('invalid-continue-uri');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.invalidContinueUri,
      );
    });

    test('''
Factory constructor should create exception with custom message for missing ios bundle id''',
        () {
      final exception =
          SendPasswordResetEmailException.fromCode('missing-ios-bundle-id');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.missingIosBundleId,
      );
    });

    test('''
Factory constructor should create exception with custom message for missing continue uri''',
        () {
      final exception =
          SendPasswordResetEmailException.fromCode('missing-continue-uri');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.missingContinueUri,
      );
    });

    test('''
Factory constructor should create exception with custom message for missing android package name''',
        () {
      final exception =
          SendPasswordResetEmailException.fromCode('missing-android-pkg-name');
      expect(exception.message, isNotNull);
      expect(
        exception.message,
        AppTranslations.errorMessages.missingAndroidPackageName,
      );
    });

    test('''
Factory constructor should create exception with default message for unknown code''',
        () {
      final exception =
          SendPasswordResetEmailException.fromCode('unknown-code');
      expect(
        exception.message,
        AppTranslations.errorMessages.defaultError,
      );
    });
  });
}
