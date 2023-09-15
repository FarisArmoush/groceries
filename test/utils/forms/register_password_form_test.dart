// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/forms/app_forms.dart';

void main() {
  group('RegisterPasswordForm', () {
    test('validator should return null when value is valid', () {
      const form = RegisterPasswordForm.dirty('Password1!');
      final result = form.validator(form.value);
      expect(result, isNull);
    });

    test('validator should return error when value is empty', () {
      const form = RegisterPasswordForm.dirty('');
      final result = form.validator(form.value);
      expect(
        result,
        equals(AppTranslations.inputValidationMessages.fieldCannotBeEmpty),
      );
    });

    test('validator should return error when value has less than 8 characters',
        () {
      const form = RegisterPasswordForm.dirty('Pass1!');
      final result = form.validator(form.value);
      final expected = 'Cannot be less than 8 letters.\n'
          '${AppTranslations.inputValidationMessages.fieldMustHaveAtLeastEightCharacters}';
      expect(result, equals(expected));
    });

    test('validator should return error if value doesnt contain special char',
        () {
      const form = RegisterPasswordForm.dirty('Password1');
      final result = form.validator(form.value);
      final expected = AppTranslations
          .inputValidationMessages.fieldMustContainAtLeastOneSpecialCharacter;
      expect(result, equals(expected));
    });

    test('validator should return error when value does not contain a number',
        () {
      const form = RegisterPasswordForm.dirty('Password!');
      final result = form.validator(form.value);
      final expected = AppTranslations
          .inputValidationMessages.fieldMustContainAtLeastOneNumber;
      expect(result, equals(expected));
    });
  });
}
