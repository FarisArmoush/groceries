import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';

void main() {
  group('AppNetworkException', () {
    test('Constructing with message sets the message property', () {
      const exception = AppNetworkException('Test Message');
      expect(exception.message, 'Test Message');
    });

    test('Constructing from invalid-email code sets the correct message', () {
      final exception = AppNetworkException.fromCode('invalid-email');
      expect(exception.message, AppTranslations.errorMessages.invalidEmail);
    });

    test('Constructing from user-disabled code sets the correct message', () {
      final exception = AppNetworkException.fromCode('user-disabled');
      expect(exception.message, AppTranslations.errorMessages.userDisabled);
    });

    test('Constructing from user-not-found code sets the correct message', () {
      final exception = AppNetworkException.fromCode('user-not-found');
      expect(exception.message, AppTranslations.errorMessages.userNotFound);
    });

    test(
        'Constructing from requires-recent-login code sets the correct message',
        () {
      final exception = AppNetworkException.fromCode('requires-recent-login');
      expect(
        exception.message,
        AppTranslations.errorMessages.requiresRecentLogin,
      );
    });

    test('Constructing from wrong-password code sets the correct message', () {
      final exception = AppNetworkException.fromCode('wrong-password');
      expect(exception.message, AppTranslations.errorMessages.wrongPassword);
    });

    test('Constructing from email-already-in-use code sets the correct message',
        () {
      final exception = AppNetworkException.fromCode('email-already-in-use');
      expect(
        exception.message,
        AppTranslations.errorMessages.emailAlreadyInUse,
      );
    });

    test(
        'Constructing from operation-not-allowed code sets the correct message',
        () {
      final exception = AppNetworkException.fromCode('operation-not-allowed');
      expect(
        exception.message,
        AppTranslations.errorMessages.operationNotAllowed,
      );
    });

    test('Constructing from weak-password code sets the correct message', () {
      final exception = AppNetworkException.fromCode('weak-password');
      expect(exception.message, AppTranslations.errorMessages.weakPassword);
    });

    test('''
Constructing from unauthorized-continue-uri code sets the correct message''',
        () {
      final exception =
          AppNetworkException.fromCode('unauthorized-continue-uri');
      expect(
        exception.message,
        AppTranslations.errorMessages.unauthorizedContinueUri,
      );
    });

    test('Constructing from invalid-continue-uri code sets the correct message',
        () {
      final exception = AppNetworkException.fromCode('invalid-continue-uri');
      expect(
        exception.message,
        AppTranslations.errorMessages.invalidContinueUri,
      );
    });

    test(
        'Constructing from missing-ios-bundle-id code sets the correct message',
        () {
      final exception = AppNetworkException.fromCode('missing-ios-bundle-id');
      expect(
        exception.message,
        AppTranslations.errorMessages.missingIosBundleId,
      );
    });

    test('Constructing from missing-continue-uri code sets the correct message',
        () {
      final exception = AppNetworkException.fromCode('missing-continue-uri');
      expect(
        exception.message,
        AppTranslations.errorMessages.missingContinueUri,
      );
    });

    test('''
Constructing from missing-android-pkg-name code sets the correct message''',
        () {
      final exception =
          AppNetworkException.fromCode('missing-android-pkg-name');
      expect(
        exception.message,
        AppTranslations.errorMessages.missingAndroidPackageName,
      );
    });

    test('Constructing from unknown code sets default error message', () {
      final exception = AppNetworkException.fromCode('unknown-code');
      expect(exception.message, AppTranslations.errorMessages.defaultError);
    });
  });
}
