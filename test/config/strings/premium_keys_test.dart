import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('PremiumKeys', () {
    test('translations should not be null', () {
      final keys = PremiumKeys();

      expect(keys.buyPremium, isNotNull);
      expect(keys.title, isNotNull);
      expect(keys.description, isNotNull);
      expect(keys.suscribe, isNotNull);
      expect(keys.annual, isNotNull);
      expect(keys.monthly, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = PremiumKeys();

      expect(keys.buyPremium.isNotEmpty, true);
      expect(keys.title.isNotEmpty, true);
      expect(keys.description.isNotEmpty, true);
      expect(keys.suscribe.isNotEmpty, true);
      expect(keys.annual.isNotEmpty, true);
      expect(keys.monthly.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = PremiumKeys();

      expect(tr(keys.buyPremium), isNotNull);
      expect(tr(keys.title), isNotNull);
      expect(tr(keys.description), isNotNull);
      expect(tr(keys.suscribe), isNotNull);
      expect(tr(keys.annual), isNotNull);
      expect(tr(keys.monthly), isNotNull);
    });
  });
}
