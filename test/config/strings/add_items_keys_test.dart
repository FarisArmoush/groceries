import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('AccountSettingsKeys', () {
    test('translations should not be null', () {
      final keys = AddItemsKeys();

      expect(keys.addItems, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = AddItemsKeys();

      expect(keys.addItems.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = AddItemsKeys();

      expect(tr(keys.addItems), isNotNull);
    });
  });
}
