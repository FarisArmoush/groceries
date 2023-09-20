part of '../app_forms.dart';

/// A class representing a confirmed password input form field.
/// This class extends the FormzInput class and is specifically
/// designed for handling confirmed password input fields.
/// It provides validation logic for confirming passwords.

class ConfirmedPasswordForm extends FormzInput<String, String> {
  /// Constructor which creates a pure [ConfirmedPasswordForm]
  /// with a given password.
  ///
  /// The pure state indicates that the form field has not been modified.
  ///
  /// @param password The password to be confirmed.
  const ConfirmedPasswordForm.pure({
    this.password = '',
  }) : super.pure('');

  /// Constructor which creates a dirty [ConfirmedPasswordForm]
  /// with a given password and value.
  ///
  /// The dirty state indicates that the form field has been modified.
  ///
  /// @param password The password to be confirmed.
  /// @param value The initial value of the confirmed password form field.
  const ConfirmedPasswordForm.dirty({
    required this.password,
    String value = '',
  }) : super.dirty(value);

  final String password;

  @override
  String? validator(String? value) {
    if (password.isEmpty) {
      return AppTranslations.inputValidationMessages.fieldCannotBeEmpty;
    }
    if (password != value) {
      return AppTranslations.inputValidationMessages.passwordsDoNotMatch;
    }

    return null;
  }
}