part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.updateDisplayName(String displayName) =
      _UpdateDisplayName;

  const factory RegisterEvent.updateEmail(String email) = _UpdateEmail;

  const factory RegisterEvent.updatePassword(String password) = _UpdatePassword;

  const factory RegisterEvent.updateConfirmPassword(String password) =
      _UpdateConfirmPassword;

  const factory RegisterEvent.toggleIsObscure() = _ToggleIsObscure;

  const factory RegisterEvent.submit() = _Submit;

  const factory RegisterEvent.resetState() = _ResetState;

  const factory RegisterEvent.dismissKeyboard() = _DismissKeyboard;
}
