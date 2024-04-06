part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(EmailForm.pure()) EmailForm email,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    FocusNode? emailNode,
    String? errorMessage,
  }) = _ForgotPasswordState;

  const ForgotPasswordState._();
}
