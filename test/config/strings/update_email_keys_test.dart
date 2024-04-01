import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('UpdateEmailKeys', () {
    test('translations should not be null', () {
      final keys = UpdateEmailKeys();

      expect(keys.header, isNotNull);
      expect(keys.body, isNotNull);
      expect(keys.emailUpdatedSuccessfully, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = UpdateEmailKeys();

      expect(keys.header.isNotEmpty, true);
      expect(keys.body.isNotEmpty, true);
      expect(keys.emailUpdatedSuccessfully.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = UpdateEmailKeys();

      expect(tr(keys.header), isNotNull);
      expect(tr(keys.body), isNotNull);
      expect(tr(keys.emailUpdatedSuccessfully), isNotNull);
    });
  });
}
