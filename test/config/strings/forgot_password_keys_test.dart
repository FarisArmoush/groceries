import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/strings/forgot_password_keys.dart';

void main() {
  group('ForgotPasswordKeys', () {
    test('translations should not be null', () {
      final keys = ForgotPasswordKeys();

      expect(keys.header, isNotNull);
      expect(keys.body, isNotNull);
      expect(keys.sendResetPassword, isNotNull);
      expect(keys.cancelDialogHeader, isNotNull);
      expect(keys.yesCancel, isNotNull);
      expect(keys.dontCancel, isNotNull);
      expect(keys.successHeader, isNotNull);
      expect(keys.successBody, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = ForgotPasswordKeys();

      expect(keys.header.isNotEmpty, true);
      expect(keys.body.isNotEmpty, true);
      expect(keys.sendResetPassword.isNotEmpty, true);
      expect(keys.cancelDialogHeader.isNotEmpty, true);
      expect(keys.yesCancel.isNotEmpty, true);
      expect(keys.dontCancel.isNotEmpty, true);
      expect(keys.successHeader.isNotEmpty, true);
      expect(keys.successBody.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = ForgotPasswordKeys();

      expect(tr(keys.header), isNotNull);
      expect(tr(keys.body), isNotNull);
      expect(tr(keys.sendResetPassword), isNotNull);
      expect(tr(keys.cancelDialogHeader), isNotNull);
      expect(tr(keys.yesCancel), isNotNull);
      expect(tr(keys.dontCancel), isNotNull);
      expect(tr(keys.successHeader), isNotNull);
      expect(tr(keys.successBody), isNotNull);
    });
  });
}
