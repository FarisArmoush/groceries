import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('ErrorMessagesKeys', () {
    test('translations should not be null', () {
      final keys = ErrorMessagesKeys();

      expect(keys.defaultError, isNotNull);
      expect(keys.invalidEmail, isNotNull);
      expect(keys.userDisabled, isNotNull);
      expect(keys.userNotFound, isNotNull);
      expect(keys.wrongPassword, isNotNull);
      expect(keys.emailAlreadyInUse, isNotNull);
      expect(keys.operationNotAllowed, isNotNull);
      expect(keys.weakPassword, isNotNull);
      expect(keys.unauthorizedContinueUri, isNotNull);
      expect(keys.invalidContinueUri, isNotNull);
      expect(keys.missingIosBundleId, isNotNull);
      expect(keys.missingContinueUri, isNotNull);
      expect(keys.missingAndroidPackageName, isNotNull);
      expect(keys.requiresRecentLogin, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = ErrorMessagesKeys();

      expect(keys.defaultError.isNotEmpty, true);
      expect(keys.invalidEmail.isNotEmpty, true);
      expect(keys.userDisabled.isNotEmpty, true);
      expect(keys.userNotFound.isNotEmpty, true);
      expect(keys.wrongPassword.isNotEmpty, true);
      expect(keys.emailAlreadyInUse.isNotEmpty, true);
      expect(keys.operationNotAllowed.isNotEmpty, true);
      expect(keys.weakPassword.isNotEmpty, true);
      expect(keys.unauthorizedContinueUri.isNotEmpty, true);
      expect(keys.invalidContinueUri.isNotEmpty, true);
      expect(keys.missingIosBundleId.isNotEmpty, true);
      expect(keys.missingContinueUri.isNotEmpty, true);
      expect(keys.missingAndroidPackageName.isNotEmpty, true);
      expect(keys.requiresRecentLogin.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = ErrorMessagesKeys();

      expect(tr(keys.defaultError), isNotNull);
      expect(tr(keys.invalidEmail), isNotNull);
      expect(tr(keys.userDisabled), isNotNull);
      expect(tr(keys.userNotFound), isNotNull);
      expect(tr(keys.wrongPassword), isNotNull);
      expect(tr(keys.emailAlreadyInUse), isNotNull);
      expect(tr(keys.operationNotAllowed), isNotNull);
      expect(tr(keys.weakPassword), isNotNull);
      expect(tr(keys.unauthorizedContinueUri), isNotNull);
      expect(tr(keys.invalidContinueUri), isNotNull);
      expect(tr(keys.missingIosBundleId), isNotNull);
      expect(tr(keys.missingContinueUri), isNotNull);
      expect(tr(keys.missingAndroidPackageName), isNotNull);
      expect(tr(keys.requiresRecentLogin), isNotNull);
    });
  });
}
