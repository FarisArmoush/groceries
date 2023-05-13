import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';

class LoginPasswordForm extends FormzInput<String, String> {
  const LoginPasswordForm.pure() : super.pure('');

  const LoginPasswordForm.dirty(String value) : super.dirty(value);

  @override
  String? validator(String? value) {
    var errors = '';
    if (value!.isEmpty) {
      return AppTranslations.fieldCannotBeEmpty;
    }
    if (value.length < 8) {
      errors += AppTranslations.fieldMustHaveAtLeastEightCharacters;
    }
    if (errors.isEmpty) {
      return null;
    }
    return errors.trim();
  }
}
