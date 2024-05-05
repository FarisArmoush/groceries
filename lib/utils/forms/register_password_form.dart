import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/utils/app_reg_exps.dart';

/// A class representing a register password input form field.
/// This class extends the FormzInput class and is specifically
/// designed for handling register password's input fields.
/// It provides validation logic for password in register module.
class RegisterPasswordForm extends FormzInput<String, String> {
  /// With a given password.
  ///
  /// The pure state indicates that the form field has not been modified.
  ///
  /// @param value The initial value of the password form field.
  const RegisterPasswordForm.pure() : super.pure('');

  /// Constructor which creates a dirty [RegisterPasswordForm]
  /// with a given value
  ///
  /// The dirty state indicates that the form field has been modified.
  ///
  /// @param value The initial value of the password form field.
  const RegisterPasswordForm.dirty(super.value) : super.dirty();

  @override
  String? validator(String? value) {
    final messages = Translations.validation;

    if (value!.isEmpty) {
      return messages.fieldCannotBeEmpty;
    }
    if (value.length <= 8) {
      return messages.fieldMustHaveAtLeastEightCharacters;
    }
    if (!value.contains(AppRegExps.specialCharacters)) {
      return messages.fieldMustContainAtLeastOneSpecialCharacter;
    }
    return null;
  }
}
