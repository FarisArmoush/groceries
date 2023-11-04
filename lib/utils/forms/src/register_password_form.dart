// ignore_for_file: lines_longer_than_80_chars
part of '../app_forms.dart';

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
    if (value!.isEmpty) {
      return AppTranslations.inputValidationMessages.fieldCannotBeEmpty;
    }
    if (value.length.isLessThan(8)) {
      return '${AppTranslations.inputValidationMessages.fieldMustHaveAtLeastEightCharacters}\n';
    }
    if (!value.contains(AppRegExps.specialCharacters)) {
      return '${AppTranslations.inputValidationMessages.fieldMustContainAtLeastOneSpecialCharacter}\n';
    }
    return null;
  }
}
