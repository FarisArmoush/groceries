import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('ThemeKeys', () {
    test('translations should not be null', () {
      final keys = ThemeKeys();

      expect(keys.theme, isNotNull);
      expect(keys.header, isNotNull);
      expect(keys.hint, isNotNull);
      expect(keys.light, isNotNull);
      expect(keys.dark, isNotNull);
      expect(keys.system, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = ThemeKeys();

      expect(keys.theme.isNotEmpty, true);
      expect(keys.header.isNotEmpty, true);
      expect(keys.hint.isNotEmpty, true);
      expect(keys.light.isNotEmpty, true);
      expect(keys.dark.isNotEmpty, true);
      expect(keys.system.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = ThemeKeys();

      expect(tr(keys.theme), isNotNull);
      expect(tr(keys.header), isNotNull);
      expect(tr(keys.hint), isNotNull);
      expect(tr(keys.light), isNotNull);
      expect(tr(keys.dark), isNotNull);
      expect(tr(keys.system), isNotNull);
    });
  });
}
