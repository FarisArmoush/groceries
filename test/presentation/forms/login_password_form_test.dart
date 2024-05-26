import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/forms/login_password_form.dart';

void main() {
  group('LoginPasswordForm', () {
    test('emits pure for the initial state', () {
      const password = LoginPasswordForm.pure();
      expect(password.value, '');
      expect(password.isPure, true);
      expect(password.isValid, false);
      expect(password.isNotValid, true);
      expect(password.displayError, isNull);
    });

    test('emits dirty when the value is changed', () {
      const password = LoginPasswordForm.dirty('test@example.com');
      expect(password.value, 'test@example.com');
      expect(password.isPure, false);
      expect(password.isValid, true);
      expect(password.isNotValid, false);
      expect(password.error, isNull);
    });

    test('emits an error when the password is empty', () {
      const password = LoginPasswordForm.dirty('');
      expect(password.value, '');
      expect(password.isPure, false);
      expect(password.isValid, false);
      expect(password.isNotValid, true);
      expect(
        password.error,
        Translations.validation.fieldCannotBeEmpty,
      );
    });

    test('emits an error when the email is not valid', () {
      const password = LoginPasswordForm.dirty('123');
      expect(password.value, '123');
      expect(password.isPure, false);
      expect(password.isValid, false);
      expect(password.isNotValid, true);
      expect(
        password.error,
        Translations.validation.fieldMustHaveAtLeastEightCharacters,
      );
    });
  });
}
