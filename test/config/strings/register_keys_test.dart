import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('RegisterKeys', () {
    test('translations should not be null', () {
      final keys = RegisterKeys();

      expect(keys.register, isNotNull);
      expect(keys.header, isNotNull);
      expect(keys.body, isNotNull);
      expect(keys.alreadyHaveAnAccount, isNotNull);
      expect(keys.loginNow, isNotNull);
      expect(keys.repeatPassword, isNotNull);
      expect(keys.accountCreatedSuccessfully, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = RegisterKeys();

      expect(keys.register.isNotEmpty, true);
      expect(keys.header.isNotEmpty, true);
      expect(keys.body.isNotEmpty, true);
      expect(keys.alreadyHaveAnAccount.isNotEmpty, true);
      expect(keys.loginNow.isNotEmpty, true);
      expect(keys.repeatPassword.isNotEmpty, true);
      expect(keys.accountCreatedSuccessfully.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = RegisterKeys();

      expect(tr(keys.register), isNotNull);
      expect(tr(keys.header), isNotNull);
      expect(tr(keys.body), isNotNull);
      expect(tr(keys.alreadyHaveAnAccount), isNotNull);
      expect(tr(keys.loginNow), isNotNull);
      expect(tr(keys.repeatPassword), isNotNull);
      expect(tr(keys.accountCreatedSuccessfully), isNotNull);
    });
  });
}
