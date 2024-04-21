import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/utils/forms/email_form.dart';

void main() {
  group('email', () {
    test('emits pure for the initial state', () {
      const email = EmailForm.pure();
      expect(email.value, '');
      expect(email.isPure, true);
      expect(email.isValid, false);
      expect(email.isNotValid, true);
      expect(email.displayError, isNull);
    });

    test('emits dirty when the value is changed', () {
      const email = EmailForm.dirty('test@example.com');
      expect(email.value, 'test@example.com');
      expect(email.isPure, false);
      expect(email.isValid, true);
      expect(email.isNotValid, false);
      expect(email.error, isNull);
    });

    test('emits an error when the email is empty', () {
      const email = EmailForm.dirty('');
      expect(email.value, '');
      expect(email.isPure, false);
      expect(email.isValid, false);
      expect(email.isNotValid, true);
      expect(
        email.error,
        Translations.validation.fieldCannotBeEmpty,
      );
    });

    test('emits an error when the email is not valid', () {
      const email = EmailForm.dirty('invalid-email');
      expect(email.value, 'invalid-email');
      expect(email.isPure, false);
      expect(email.isValid, false);
      expect(email.isNotValid, true);
      expect(
        email.error,
        Translations.validation.emailIsntValid,
      );
    });
  });
}
