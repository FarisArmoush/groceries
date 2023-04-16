import 'package:formz/formz.dart';

class LoginPasswordForm extends FormzInput<String, String> {
  const LoginPasswordForm.pure() : super.pure('');

  const LoginPasswordForm.dirty(String value) : super.dirty(value);

  @override
  String? validator(String? value) {
    var errors = '';
    if (value!.isEmpty) {
      return 'Field cannot be empty\n';
    }
    if (value.length < 8) {
      errors += 'Cannot be less than 8 letters.\n';
    }
    if (errors.isEmpty) {
      return null;
    }
    return errors.trim();
  }
}
