part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.updateEmail(String email) = _UpdateEmail;

  const factory LoginEvent.updatePassword(String password) = _UpdatePassword;

  const factory LoginEvent.toggleIsObscure() = _ToggleIsObscure;

  const factory LoginEvent.login() = _Login;
}
