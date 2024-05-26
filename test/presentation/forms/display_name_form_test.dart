import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/forms/display_name_form.dart';

void main() {
  group('DisplayNameForm', () {
    test('emits pure for the initial state', () {
      const displayName = DisplayNameForm.pure();
      expect(displayName.value, '');
      expect(displayName.isPure, true);
      expect(displayName.isValid, false);
      expect(displayName.isNotValid, true);
      expect(displayName.displayError, isNull);
    });

    test('emits dirty when the value is changed', () {
      const displayName = DisplayNameForm.dirty('JohnDoe123');
      expect(displayName.value, 'JohnDoe123');
      expect(displayName.isPure, false);
      expect(displayName.isValid, true);
      expect(displayName.isNotValid, false);
      expect(displayName.error, isNull);
    });

    test('emits an error when the display name is empty', () {
      const displayName = DisplayNameForm.dirty('');
      expect(displayName.value, '');
      expect(displayName.isPure, false);
      expect(displayName.isValid, false);
      expect(displayName.isNotValid, true);
      expect(
        displayName.error,
        Translations.validation.fieldCannotBeEmpty,
      );
    });

    test('emits an error when the display name has less than 8 characters', () {
      const displayName = DisplayNameForm.dirty('Short');
      expect(displayName.value, 'Short');
      expect(displayName.isPure, false);
      expect(displayName.isValid, false);
      expect(displayName.isNotValid, true);
      expect(
        displayName.error,
        Translations.validation.fieldMustHaveAtLeastEightCharacters,
      );
    });

    test('does not emit an error when the display name is valid', () {
      const displayName = DisplayNameForm.dirty('ValidName123');
      expect(displayName.value, 'ValidName123');
      expect(displayName.isPure, false);
      expect(displayName.isValid, true);
      expect(displayName.isNotValid, false);
      expect(displayName.error, isNull);
    });
  });
}
