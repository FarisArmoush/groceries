import 'package:formz/formz.dart';
import 'package:groceries/app/core/utils/app_reg_exps.dart';

class RegisterPasswordForm extends FormzInput<String, String> {
  const RegisterPasswordForm.pure() : super.pure('');

  const RegisterPasswordForm.dirty(String value) : super.dirty(value);

  @override
  String? validator(String? value) {
    var errors = '';
    if (value!.isEmpty) {
      return 'Field must not be empty.\n';
    }
    if (value.length < 8) {
      errors += 'Cannot be less than 8 letters.\n';
    }
    if (!value.contains(AppRegExps.specialCharacters)) {
      errors += 'Must at least have one special character.\n';
    }
    if (!value.contains(AppRegExps.numbers)) {
      errors += 'Must at least have one number.\n';
    }
    if (errors.isEmpty) {
      return null;
    }
    return errors.trim();
  }
}
