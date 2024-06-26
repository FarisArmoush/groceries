import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';

/// A class representing a login password input form field.
/// This class extends the FormzInput class and is specifically
/// designed for handling login password's input fields.
/// It provides validation logic for password in login module.
class LoginPasswordForm extends FormzInput<String, String> {
  /// Constructor which creates a pure [LoginPasswordForm]
  /// with a given password.
  ///
  /// The pure state indicates that the form field has not been modified.
  ///
  /// @param value The initial value of the password form field.
  const LoginPasswordForm.pure() : super.pure('');

  /// Constructor which creates a dirty [LoginPasswordForm] with a given value.
  ///
  /// The dirty state indicates that the form field has been modified.
  ///
  /// @param value The initial value of the password form field.
  const LoginPasswordForm.dirty(super.value) : super.dirty();

  @override
  String? validator(String? value) {
    final messages = Translations.validation;
    if (value!.isEmpty) {
      return messages.fieldCannotBeEmpty;
    }
    if (value.length <= 8) {
      return messages.fieldMustHaveAtLeastEightCharacters;
    }
    return null;
  }
}
