import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/forms/grocery_list_name_form.dart';

void main() {
  group('GroceryListname', () {
    test('emits pure for the initial state', () {
      const name = GroceryListNameForm.pure('');
      expect(name.value, '');
      expect(name.isPure, true);
      expect(name.isValid, false);
      expect(name.isNotValid, true);
      expect(name.displayError, isNull);
    });

    test('emits dirty when the value is changed', () {
      const value = 'test@example.com';
      const name = GroceryListNameForm.dirty(value);
      expect(name.value, value);
      expect(name.isPure, false);
      expect(name.isValid, true);
      expect(name.isNotValid, false);
      expect(name.error, isNull);
    });

    test('emits an error when the name is empty', () {
      const name = GroceryListNameForm.dirty('');
      expect(name.value, '');
      expect(name.isPure, false);
      expect(name.isValid, false);
      expect(name.isNotValid, true);
      expect(
        name.error,
        AppTranslations.inputValidationMessages.fieldCannotBeEmpty,
      );
    });

    test('emits an error when the name is not valid', () {
      const value = 'invalid';
      const name = GroceryListNameForm.dirty(value);
      expect(name.value, value);
      expect(name.isPure, false);
      expect(name.isValid, false);
      expect(name.isNotValid, true);
      expect(
        name.error,
        AppTranslations
            .inputValidationMessages.fieldMustHaveAtLeastEightCharacters,
      );
    });
  });
}
