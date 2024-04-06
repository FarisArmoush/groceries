part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged(String email) = _EmailChanged;

  const factory ForgotPasswordEvent.sendEmail() = _SendEmail;

  const factory ForgotPasswordEvent.dismissKeyboard() = _DismissKeyboard;
  
}
