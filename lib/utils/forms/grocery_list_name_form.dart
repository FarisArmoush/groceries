import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/num_extensions.dart';

/// A class representing a form field for entering a grocery list name.
/// This class extends the FormzInput class and provides validation logic
/// for ensuring the entered grocery list name meets certain criteria.
class GroceryListNameForm extends FormzInput<String, String> {
  /// Constructor which creates a pure [GroceryListNameForm] with a given value.
  ///
  /// The pure state indicates that the form field has not been modified.
  ///
  /// @param value The initial value of the grocery list name form field.
  const GroceryListNameForm.pure(super.value) : super.pure();

  /// Constructor which creates a dirty [GroceryListNameForm]
  /// with a given value.
  ///
  /// The dirty state indicates that the form field has been modified.
  ///
  /// @param value The initial value of the grocery list name form field.
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
