import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/forms/register_password_form.dart';

void main() {
  group('register password', () {
    test('emits pure for the initial state', () {
      const registerPassword = RegisterPasswordForm.pure();
      expect(registerPassword.value, '');
      expect(registerPassword.isPure, true);
      expect(registerPassword.isValid, false);
      expect(registerPassword.isNotValid, true);
      expect(registerPassword.displayError, isNull);
    });

    test('emits dirty when the value is changed', () {
      const registerPassword = RegisterPasswordForm.dirty('StrongPass123!');
      expect(registerPassword.value, 'StrongPass123!');
      expect(registerPassword.isPure, false);
      expect(registerPassword.isValid, true);
      expect(registerPassword.isNotValid, false);
      expect(registerPassword.error, isNull);
    });

    test('emits an error when the password is empty', () {
      const registerPassword = RegisterPasswordForm.dirty('');
      expect(registerPassword.value, '');
      expect(registerPassword.isPure, false);
      expect(registerPassword.isValid, false);
      expect(registerPassword.isNotValid, true);
      expect(
        registerPassword.error,
        AppTranslations.inputValidationMessages.fieldCannotBeEmpty,
      );
    });

    test('emits an error when the password has less than 8 characters', () {
      const registerPassword = RegisterPasswordForm.dirty('Weak123');
      expect(registerPassword.value, 'Weak123');
      expect(registerPassword.isPure, false);
      expect(registerPassword.isValid, false);
      expect(registerPassword.isNotValid, true);
      expect(
        registerPassword.error,
        AppTranslations
            .inputValidationMessages.fieldMustHaveAtLeastEightCharacters,
      );
    });

    test(
        'emits an error when the password does not contain a special character',
        () {
      const registerPassword =
          RegisterPasswordForm.dirty('NoSpecialCharacter123');
      expect(registerPassword.value, 'NoSpecialCharacter123');
      expect(registerPassword.isPure, false);
      expect(registerPassword.isValid, false);
      expect(registerPassword.isNotValid, true);
      expect(
        registerPassword.error,
        AppTranslations
            .inputValidationMessages.fieldMustContainAtLeastOneSpecialCharacter,
      );
    });

    test('does not emit an error when the password is valid', () {
      const registerPassword = RegisterPasswordForm.dirty('StrongPass123!');
      expect(registerPassword.value, 'StrongPass123!');
      expect(registerPassword.isPure, false);
      expect(registerPassword.isValid, true);
      expect(registerPassword.isNotValid, false);
      expect(registerPassword.error, isNull);
    });
  });
}
