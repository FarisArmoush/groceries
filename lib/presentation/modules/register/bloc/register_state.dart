part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    @Default(DisplayNameForm.pure()) DisplayNameForm displayName,
    @Default(EmailForm.pure()) EmailForm email,
    @Default(RegisterPasswordForm.pure()) RegisterPasswordForm password,
    @Default(ConfirmedPasswordForm.pure())
    ConfirmedPasswordForm confirmPassword,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    @Default(true) bool isObscure,
    String? errorMessage,
  }) = _RegisterState;

  const RegisterState._();
}
