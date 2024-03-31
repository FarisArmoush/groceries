import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/strings/page_not_found_keys.dart';

void main() {
  group('PageNotFoundKeys', () {
    test('translations should not be null', () {
      final keys = PageNotFoundKeys();

      expect(keys.title, isNotNull);
      expect(keys.goBack, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = PageNotFoundKeys();

      expect(keys.title.isNotEmpty, true);
      expect(keys.goBack.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = PageNotFoundKeys();

      expect(tr(keys.title), isNotNull);
      expect(tr(keys.goBack), isNotNull);
    });
  });
}
