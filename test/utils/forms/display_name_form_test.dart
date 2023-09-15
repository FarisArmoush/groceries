import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/forms/app_forms.dart';

void main() {
  group('DisplayNameForm', () {
    test('Validate empty value', () {
      const form = DisplayNameForm.pure();
      final error = form.validator('');
      expect(
        error?.split('\n'),
        containsAll([
          AppTranslations.inputValidationMessages.fieldCannotBeEmpty,
        ]),
      );
    });

    test('Validate value with less than 8 characters', () {
      const form = DisplayNameForm.pure();
      final error = form.validator('abc');
      expect(
        error?.split('\n'),
        containsAll([
          AppTranslations
              .inputValidationMessages.fieldMustHaveAtLeastEightCharacters,
        ]),
      );
    });

    test('Validate value with special characters', () {
      const form = DisplayNameForm.pure();
      final error = form.validator('Display!Name');
      expect(
        error?.split('\n'),
        containsAll([
          AppTranslations
              .inputValidationMessages.fieldMustNotContainSpecialCharacters,
        ]),
      );
    });

    test('Validate value with less than 4 English letters', () {
      const form = DisplayNameForm.pure();
      final error = form.validator('12345');
      expect(
        error?.split('\n'),
        containsAll([
          AppTranslations
              .inputValidationMessages.fieldMustAtLeastContainFourLetters,
        ]),
      );
    });

    test('Validate value with whitespace', () {
      const form = DisplayNameForm.pure();
      final error = form.validator('Display Name');
      expect(
        error?.split('\n'),
        containsAll([
          AppTranslations.inputValidationMessages.fieldMustNotHaveSpace,
        ]),
      );
    });

    test('Validate valid value', () {
      const form = DisplayNameForm.pure();
      final error = form.validator('JohnDoe123');
      expect(error, isNull);
    });
  });
}
