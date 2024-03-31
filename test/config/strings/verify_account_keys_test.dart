import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/strings/verify_account_keys.dart';

void main() {
  group('VerifyAccountKeys', () {
    test('translations should not be null', () {
      final keys = VerifyAccountKeys();

      expect(keys.verifyAccount, isNotNull);
      expect(keys.sendVerificationEmail, isNotNull);
      expect(keys.failedMessage, isNotNull);
      expect(keys.successHeader, isNotNull);
      expect(keys.successBody, isNotNull);
      expect(keys.loadingMessage, isNotNull);
      expect(keys.isVerified, isNotNull);
      expect(keys.verifyToUpdateEmail, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = VerifyAccountKeys();

      expect(keys.verifyAccount.isNotEmpty, true);
      expect(keys.sendVerificationEmail.isNotEmpty, true);
      expect(keys.failedMessage.isNotEmpty, true);
      expect(keys.successHeader.isNotEmpty, true);
      expect(keys.successBody.isNotEmpty, true);
      expect(keys.loadingMessage.isNotEmpty, true);
      expect(keys.isVerified.isNotEmpty, true);
      expect(keys.verifyToUpdateEmail.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = VerifyAccountKeys();

      expect(tr(keys.verifyAccount), isNotNull);
      expect(tr(keys.sendVerificationEmail), isNotNull);
      expect(tr(keys.failedMessage), isNotNull);
      expect(tr(keys.successHeader), isNotNull);
      expect(tr(keys.successBody), isNotNull);
      expect(tr(keys.loadingMessage), isNotNull);
      expect(tr(keys.isVerified), isNotNull);
      expect(tr(keys.verifyToUpdateEmail), isNotNull);
    });
  });
}
