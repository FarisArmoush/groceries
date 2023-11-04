part of '../app_forms.dart';

class GroceryListNameForm extends FormzInput<String, String> {
  const GroceryListNameForm.pure(super.value) : super.pure();

  const GroceryListNameForm.dirty(super.value) : super.dirty();

  @override
  String? validator(String value) {
    if (value.isEmpty) {
      return AppTranslations.inputValidationMessages.fieldCannotBeEmpty;
    }
    if (value.length.isLessThan(8)) {
      return AppTranslations
          .inputValidationMessages.fieldMustHaveAtLeastEightCharacters;
    }
    return null;
  }
}
