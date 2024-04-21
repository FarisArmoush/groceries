import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('UpdateDisplayNameKeys', () {
    test('translations should not be null', () {
      final keys = UpdateDisplayNameKeys();

      expect(keys.header, isNotNull);
      expect(keys.body, isNotNull);
      expect(keys.nameUpdatedSuccessfully, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = UpdateDisplayNameKeys();

      expect(keys.header.isNotEmpty, true);
      expect(keys.body.isNotEmpty, true);
      expect(keys.nameUpdatedSuccessfully.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = UpdateDisplayNameKeys();

      expect(tr(keys.header), isNotNull);
      expect(tr(keys.body), isNotNull);
      expect(tr(keys.nameUpdatedSuccessfully), isNotNull);
    });
  });
}
