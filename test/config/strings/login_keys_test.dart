import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('LoginKeys', () {
    test('translations should not be null', () {
      final keys = LoginKeys();

      expect(keys.login, isNotNull);
      expect(keys.header, isNotNull);
      expect(keys.body, isNotNull);
      expect(keys.dontHaveAnAccount, isNotNull);
      expect(keys.registerNow, isNotNull);
      expect(keys.welcomeBack, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = LoginKeys();

      expect(keys.login.isNotEmpty, true);
      expect(keys.header.isNotEmpty, true);
      expect(keys.body.isNotEmpty, true);
      expect(keys.dontHaveAnAccount.isNotEmpty, true);
      expect(keys.registerNow.isNotEmpty, true);
      expect(keys.welcomeBack.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = LoginKeys();

      expect(tr(keys.login), isNotNull);
      expect(tr(keys.header), isNotNull);
      expect(tr(keys.body), isNotNull);
      expect(tr(keys.dontHaveAnAccount), isNotNull);
      expect(tr(keys.registerNow), isNotNull);
      expect(tr(keys.welcomeBack), isNotNull);
    });
  });
}
