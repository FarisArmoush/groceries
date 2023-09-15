// ignore_for_file: lines_longer_than_80_chars
part of '../app_forms.dart';

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
    final englishLettersCount =
        AppRegExps.englishLetters.allMatches(value!).length;

    if (value.isEmpty) {
      return AppTranslations.inputValidationMessages.fieldCannotBeEmpty;
    }
    var errors = '';
    if (value.length < 8) {
      errors +=
          '${AppTranslations.inputValidationMessages.fieldMustHaveAtLeastEightCharacters}\n';
    }
    if (value.contains(AppRegExps.specialCharacters)) {
      errors +=
          '${AppTranslations.inputValidationMessages.fieldMustNotContainSpecialCharacters}\n';
    }
    if (englishLettersCount < 4) {
      errors +=
          '${AppTranslations.inputValidationMessages.fieldMustAtLeastContainFourLetters}\n';
    }
    if (value.contains(' ')) {
      errors +=
          '${AppTranslations.inputValidationMessages.fieldMustNotHaveSpace}\n';
    }
    if (errors.isEmpty) {
      return null;
    }
    return errors.trim();
  }
}
