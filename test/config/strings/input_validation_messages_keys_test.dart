import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('InputValidationMessagesKeys', () {
    test('translations should not be null', () {
      final keys = InputValidationMessagesKeys();

      expect(keys.fieldCannotBeEmpty, isNotNull);
      expect(keys.passwordsDoNotMatch, isNotNull);
      expect(keys.fieldMustHaveAtLeastEightCharacters, isNotNull);
      expect(keys.fieldMustNotContainSpecialCharacters, isNotNull);
      expect(keys.fieldMustNotHaveSpace, isNotNull);
      expect(keys.fieldMustAtLeastContainFourLetters, isNotNull);
      expect(keys.emailIsntValid, isNotNull);
      expect(keys.fieldMustContainAtLeastOneSpecialCharacter, isNotNull);
      expect(keys.fieldMustContainAtLeastOneNumber, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = InputValidationMessagesKeys();

      expect(keys.fieldCannotBeEmpty.isNotEmpty, true);
      expect(keys.passwordsDoNotMatch.isNotEmpty, true);
      expect(keys.fieldMustHaveAtLeastEightCharacters.isNotEmpty, true);
      expect(keys.fieldMustNotContainSpecialCharacters.isNotEmpty, true);
      expect(keys.fieldMustNotHaveSpace.isNotEmpty, true);
      expect(keys.fieldMustAtLeastContainFourLetters.isNotEmpty, true);
      expect(keys.emailIsntValid.isNotEmpty, true);
      expect(keys.fieldMustContainAtLeastOneSpecialCharacter.isNotEmpty, true);
      expect(keys.fieldMustContainAtLeastOneNumber.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = InputValidationMessagesKeys();

      expect(tr(keys.fieldCannotBeEmpty), isNotNull);
      expect(tr(keys.passwordsDoNotMatch), isNotNull);
      expect(tr(keys.fieldMustHaveAtLeastEightCharacters), isNotNull);
      expect(tr(keys.fieldMustNotContainSpecialCharacters), isNotNull);
      expect(tr(keys.fieldMustNotHaveSpace), isNotNull);
      expect(tr(keys.fieldMustAtLeastContainFourLetters), isNotNull);
      expect(tr(keys.emailIsntValid), isNotNull);
      expect(tr(keys.fieldMustContainAtLeastOneSpecialCharacter), isNotNull);
      expect(tr(keys.fieldMustContainAtLeastOneNumber), isNotNull);
    });
  });
}
