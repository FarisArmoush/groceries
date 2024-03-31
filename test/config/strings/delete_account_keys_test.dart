import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('DeleteAccountKeys', () {
    test('translations should not be null', () {
      final keys = DeleteAccountKeys();

      expect(keys.deleteAccount, isNotNull);
      expect(keys.header, isNotNull);
      expect(keys.body, isNotNull);
      expect(keys.yesDeleteAccount, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = DeleteAccountKeys();

      expect(keys.deleteAccount.isNotEmpty, true);
      expect(keys.header.isNotEmpty, true);
      expect(keys.body.isNotEmpty, true);
      expect(keys.yesDeleteAccount.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = DeleteAccountKeys();

      expect(tr(keys.deleteAccount), isNotNull);
      expect(tr(keys.header), isNotNull);
      expect(tr(keys.body), isNotNull);
      expect(tr(keys.yesDeleteAccount), isNotNull);
    });
  });
}
