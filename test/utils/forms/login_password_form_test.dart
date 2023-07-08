import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/forms/login_password_form.dart';

void main() {
  group('LoginPasswordForm', () {
    test('validator should return null when value is valid', () {
      const form = LoginPasswordForm.dirty('Password123');
      final result = form.validator(form.value);
      expect(result, isNull);
    });

    test('validator should return error when value is empty', () {
      const form = LoginPasswordForm.dirty('');
      final result = form.validator(form.value);
      expect(result, equals(AppTranslations.fieldCannotBeEmpty));
    });

    test('validator should return error when value has less than 8 characters',
        () {
      const form = LoginPasswordForm.dirty('Pass123');
      final result = form.validator(form.value);
      expect(
        result,
        equals(AppTranslations.fieldMustHaveAtLeastEightCharacters),
      );
    });
  });
}