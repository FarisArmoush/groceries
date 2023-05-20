import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';

/// A class representing an email input form field.
///
/// This class extends the [FormzInput] class and is specifically
/// designed for handling email input fields.
///
/// * It provides validation logic for email addresses.
class EmailForm extends FormzInput<String, String> {
  /// Constructor which creates a pure [EmailForm] with a given value.
  ///
  /// The pure state indicates that the form field has not been modified.
  ///
  /// @param value The initial value of the email form field.
  const EmailForm.pure() : super.pure('');

  /// Constructor which creates a dirty [EmailForm] with a given value.
  ///
  /// The dirty state indicates that the form field has been modified.
  ///
  /// @param value The initial value of the email form field.
  const EmailForm.dirty(super.value) : super.dirty();

  @override
  String? validator(String? value) {
    if (value!.isEmpty) {
      return AppTranslations.fieldCannotBeEmpty;
    }
    if (!EmailValidator.validate(value)) {
      return AppTranslations.emailIsntValid;
    }
    return null;
  }
}
