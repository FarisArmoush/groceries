import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('OnboardingKeys', () {
    test('translations should not be null', () {
      final keys = OnboardingKeys();

      expect(keys.finishIntroduction, isNotNull);
      expect(keys.nextPage, isNotNull);
      expect(keys.firstBody, isNotNull);
      expect(keys.firstTitle, isNotNull);
      expect(keys.secondBody, isNotNull);
      expect(keys.secondTitle, isNotNull);
      expect(keys.thirdBody, isNotNull);
      expect(keys.thirdTitle, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = OnboardingKeys();

      expect(keys.finishIntroduction.isNotEmpty, true);
      expect(keys.nextPage.isNotEmpty, true);
      expect(keys.firstBody.isNotEmpty, true);
      expect(keys.firstTitle.isNotEmpty, true);
      expect(keys.secondBody.isNotEmpty, true);
      expect(keys.secondTitle.isNotEmpty, true);
      expect(keys.thirdBody.isNotEmpty, true);
      expect(keys.thirdTitle.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = OnboardingKeys();

      expect(tr(keys.finishIntroduction), isNotNull);
      expect(tr(keys.nextPage), isNotNull);
      expect(tr(keys.firstBody), isNotNull);
      expect(tr(keys.firstTitle), isNotNull);
      expect(tr(keys.secondBody), isNotNull);
      expect(tr(keys.secondTitle), isNotNull);
      expect(tr(keys.thirdBody), isNotNull);
      expect(tr(keys.thirdTitle), isNotNull);
    });
  });
}
