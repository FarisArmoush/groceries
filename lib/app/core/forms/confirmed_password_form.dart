import 'package:formz/formz.dart';

/// A form input class that validates a confirmed
/// password against a given [password].
///
/// This class extends [FormzInput] and takes a string
/// value that represents the confirmed password.
///
/// The class provides two constructors:
///
/// * pure: Constructs an instance of ConfirmedPasswordForm
///   with a pure value of an empty string.
///
/// * dirty: Constructs an instance of ConfirmedPasswordForm
///   with a dirty value of the given [value] and a [password].
///
/// The class uses [FormzInput] to handle the state of the input value and
/// provides a custom [validator] that validates if the confirmed password
/// matches the given [password].
class ConfirmedPasswordForm extends FormzInput<String, String> {
  const ConfirmedPasswordForm.pure({this.password = ''}) : super.pure('');

  const ConfirmedPasswordForm.dirty({required this.password, String value = ''})
      : super.dirty(value);

  final String password;

  @override
  String? validator(String? value) {
    // return password == value ? null : 'Passwords do not matchs';

    if (password.isEmpty) {
      return 'This Field cannot be empty';
    }
    if (password != value) {
      return 'Passwords do not match';
    }

    return null;
  }
}
