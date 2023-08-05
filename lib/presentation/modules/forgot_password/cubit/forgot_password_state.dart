part of '../forgot_password.dart';

final class ForgotPasswordState extends Equatable {
  const ForgotPasswordState({
    this.email = const EmailForm.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.isValid = false,
  });

  final EmailForm email;
  final FormzSubmissionStatus status;
  final String? errorMessage;
  final bool isValid;

  ForgotPasswordState copyWith({
    EmailForm? email,
    FormzSubmissionStatus? status,
    String? errorMessage,
    bool? isValid,
  }) {
    return ForgotPasswordState(
      email: email ?? this.email,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object> get props => [email, status, isValid];
}
