import 'package:formz/formz.dart';
import 'package:groceries/app/core/utils/app_reg_exps.dart';

class DisplayNameForm extends FormzInput<String, String> {
  const DisplayNameForm.pure() : super.dirty('');

  const DisplayNameForm.dirty(String value) : super.pure(value);

  @override
  String? validator(String? value) {
    var englishLettersCount =
        AppRegExps.englishLetters.allMatches(value!).length;

    if (value.isEmpty) {
      return 'Field cannot be empty';
    }
    var errors = '';
    if (value.length < 8) {
      errors += 'Field must have at least 8 characters\n';
    }
    if (value.contains(AppRegExps.specialCharacters)) {
      errors += 'Field must not contain a special character\n';
    }
    if (englishLettersCount < 4) {
      errors += 'Field must at least have 4 letters\n';
    }
    if (value.contains(' ')) {
      errors += 'Field cannot have a space\n';
    }
    if (errors.isEmpty) {
      return null;
    }
    return errors.trim();
  }
}
