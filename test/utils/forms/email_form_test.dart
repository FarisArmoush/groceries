// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/forms/email_form.dart';

void main() {
  group('EmailForm', () {
    test('validator should return null when value is a valid email', () {
      const form = EmailForm.dirty('test@example.com');
      final result = form.validator(form.value);
      expect(result, isNull);
    });

    test('validator should return error when value is empty', () {
      const form = EmailForm.dirty('');
      final result = form.validator(form.value);
      expect(
        result,
        equals(AppTranslations.inputValidationMessages.fieldCannotBeEmpty),
      );
    });

    test('validator should return error when value is not a valid email', () {
      const form = EmailForm.dirty('invalidEmail');
      final result = form.validator(form.value);
      expect(
        result,
        equals(AppTranslations.inputValidationMessages.emailIsntValid),
      );
    });
  });
}
