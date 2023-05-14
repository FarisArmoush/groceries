import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';

class EmailForm extends FormzInput<String, String> {
  const EmailForm.pure() : super.pure('');

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
