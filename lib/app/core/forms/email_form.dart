import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';

class EmailForm extends FormzInput<String, String> {
  const EmailForm.pure() : super.pure('');

  const EmailForm.dirty(String value) : super.dirty(value);

  @override
  String? validator(String? value) {
    if (value!.isEmpty) {
      return 'This field must not be empty';
    }
    if (!EmailValidator.validate(value)) {
      return 'Email is not valid';
    }
    return null;
  }
}
