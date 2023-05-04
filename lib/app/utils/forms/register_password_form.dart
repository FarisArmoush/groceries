import 'package:formz/formz.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/utils/app_reg_exps.dart';

class RegisterPasswordForm extends FormzInput<String, String> {
  const RegisterPasswordForm.pure() : super.pure('');

  const RegisterPasswordForm.dirty(String value) : super.dirty(value);

  @override
  String? validator(String? value) {
    var errors = '';
    if (value!.isEmpty) {
      return AppTranslations.fieldCannotBeEmpty;
    }
    if (value.length < 8) {
      errors += 'Cannot be less than 8 letters.\n';
      errors += '${AppTranslations.fieldMustHaveAtLeastEightCharacters}\n';
    }
    if (!value.contains(AppRegExps.specialCharacters)) {
      errors +=
          '${AppTranslations.fieldMustContainAtLeastOneSpecialCharacter}\n';
    }
    if (!value.contains(AppRegExps.numbers)) {
      errors += '${AppTranslations.fieldMustContainAtLeastOneNumber}\n';
    }
    if (errors.isEmpty) {
      return null;
    }
    return errors.trim();
  }
}
