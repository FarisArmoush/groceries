import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('WelcomeKeys', () {
    test('translations should not be null', () {
      final keys = WelcomeKeys();

      expect(keys.body, isNotNull);
      expect(keys.header, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = WelcomeKeys();

      expect(keys.body.isNotEmpty, true);
      expect(keys.header.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = WelcomeKeys();

      expect(tr(keys.body), isNotNull);
      expect(tr(keys.header), isNotNull);
    });
  });
}
