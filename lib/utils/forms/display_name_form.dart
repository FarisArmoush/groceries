import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/app_reg_exps.dart';

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
  const DisplayNameForm.pure() : super.dirty('');

  /// Constructor which creates a dirty [DisplayNameForm] with a given value.
  ///
  /// The dirty state indicates that the form field has been modified.
  ///
  /// @param value The initial value of the display name form field.
  const DisplayNameForm.dirty(super.value) : super.pure();

  @override
  String? validator(String? value) {
    var englishLettersCount =
        AppRegExps.englishLetters.allMatches(value!).length;

    if (value.isEmpty) {
      return AppTranslations.fieldCannotBeEmpty;
    }
    var errors = '';
    if (value.length < 8) {
      errors += '${AppTranslations.fieldMustHaveAtLeastEightCharacters}\n';
    }
    if (value.contains(AppRegExps.specialCharacters)) {
      errors += '${AppTranslations.fieldMustNotContainSpecialCharacters}\n';
    }
    if (englishLettersCount < 4) {
      errors += '${AppTranslations.fieldMustAtLeastContainFourLetters}\n';
    }
    if (value.contains(' ')) {
      errors += '${AppTranslations.fieldMustNotHaveSpace}\n';
    }
    if (errors.isEmpty) {
      return null;
    }
    return errors.trim();
  }
}
