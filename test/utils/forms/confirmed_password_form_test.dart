import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/forms/app_forms.dart';

void main() {
  group('confirmed password', () {
    test('emits pure for the initial state', () {
      const confirmedPassword = ConfirmedPasswordForm.pure(
        password: 'Secret123',
      );
      expect(confirmedPassword.value, '');
      expect(confirmedPassword.isPure, true);
      expect(confirmedPassword.isValid, false);
      expect(confirmedPassword.isNotValid, true);
      expect(confirmedPassword.displayError, isNull);
    });

    test('emits dirty when the value is changed', () {
      const confirmedPassword = ConfirmedPasswordForm.dirty(
        password: 'Secret123',
        value: 'Secret123',
      );
      expect(confirmedPassword.value, 'Secret123');
      expect(confirmedPassword.isPure, false);
      expect(confirmedPassword.isValid, true);
      expect(confirmedPassword.isNotValid, false);
      expect(confirmedPassword.error, isNull);
    });

    test('emits an error when the confirmed password is empty', () {
      const confirmedPassword = ConfirmedPasswordForm.dirty(
        password: 'Secret123',
      );
      expect(confirmedPassword.value, '');
      expect(confirmedPassword.isPure, false);
      expect(confirmedPassword.isValid, false);
      expect(confirmedPassword.isNotValid, true);
      expect(
        confirmedPassword.error,
        AppTranslations.inputValidationMessages.passwordsDoNotMatch,
      );
    });

    test('''
emits an error when the confirmed password does not match the password''', () {
      const confirmedPassword = ConfirmedPasswordForm.dirty(
        password: 'Secret123',
        value: 'Mismatched456',
      );
      expect(confirmedPassword.value, 'Mismatched456');
      expect(confirmedPassword.isPure, false);
      expect(confirmedPassword.isValid, false);
      expect(confirmedPassword.isNotValid, true);
      expect(
        confirmedPassword.error,
        AppTranslations.inputValidationMessages.passwordsDoNotMatch,
      );
    });

    test('''
does not emit an error when the confirmed password matches the password''', () {
      const confirmedPassword = ConfirmedPasswordForm.dirty(
        password: 'Secret123',
        value: 'Secret123',
      );
      expect(confirmedPassword.value, 'Secret123');
      expect(confirmedPassword.isPure, false);
      expect(confirmedPassword.isValid, true);
      expect(confirmedPassword.isNotValid, false);
      expect(confirmedPassword.error, isNull);
    });
  });
}
