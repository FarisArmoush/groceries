import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/app_reg_exps.dart';

class DisplayNameForm extends FormzInput<String, String> {
  const DisplayNameForm.pure() : super.dirty('');

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
