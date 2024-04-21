import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/utils/extenstions/num_extensions.dart';

/// A class representing a display name input form field.
/// This class extends the FormzInput class and is specifically
/// designed for handling display name input fields.
/// It provides validation logic for display names.
class DisplayNameForm extends FormzInput<String, String> {
  /// Constructor which creates a pure [DisplayNameForm] with a given value.
  ///
  /// The pure state indicates that the form field has not been modified.
  ///
  /// @param value The initial value of the display name form field.
  const DisplayNameForm.pure() : super.pure('');

  /// Constructor which creates a dirty [DisplayNameForm] with a given value.
  ///
  /// The dirty state indicates that the form field has been modified.
  ///
  /// @param value The initial value of the display name form field.
  const DisplayNameForm.dirty(super.value) : super.dirty();

  @override
  String? validator(String? value) {
    final messages = Translations.validation;

    if (value!.isEmpty) {
      return messages.fieldCannotBeEmpty;
    }
    if (value.length.isLessThan(8)) {
      return messages.fieldMustHaveAtLeastEightCharacters;
    }
    return null;
  }
}
