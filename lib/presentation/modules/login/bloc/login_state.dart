part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(EmailForm.pure()) EmailForm email,
    @Default(LoginPasswordForm.pure()) LoginPasswordForm password,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    @Default(true) bool isObscure,
    FocusNode? emailNode,
    FocusNode? passwordNode,
    String? errorMessage,
  }) = _LoginState;

  const LoginState._();
}
