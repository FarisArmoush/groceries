import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';

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
    final messages = Translations.validation;

    if (value.isEmpty) {
      return messages.fieldCannotBeEmpty;
    }
    if (value.length <= 8) {
      return messages.fieldMustHaveAtLeastEightCharacters;
    }
    return null;
  }
}
