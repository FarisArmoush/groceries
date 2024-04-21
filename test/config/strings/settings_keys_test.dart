import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('SettingsKeys', () {
    test('translations should not be null', () {
      final keys = SettingsKeys();

      expect(keys.settings, isNotNull);
      expect(keys.logoutFailed, isNotNull);
      expect(keys.logoutSuccess, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = SettingsKeys();

      expect(keys.settings.isNotEmpty, true);
      expect(keys.logoutFailed.isNotEmpty, true);
      expect(keys.logoutSuccess.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = SettingsKeys();

      expect(tr(keys.settings), isNotNull);
      expect(tr(keys.logoutFailed), isNotNull);
      expect(tr(keys.logoutSuccess), isNotNull);
    });
  });
}
