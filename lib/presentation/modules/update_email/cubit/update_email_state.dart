part of '../update_email.dart';

final class UpdateEmailState extends Equatable {
  const UpdateEmailState({
    this.email = const EmailForm.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.isValid = false,
  });

  final EmailForm email;
  final FormzSubmissionStatus status;
  final String? errorMessage;
  final bool isValid;
  @override
  List<Object> get props => [email, status];

  UpdateEmailState copyWith({
    EmailForm? email,
    FormzSubmissionStatus? status,
    String? errorMessage,
    bool? isValid,
  }) {
    return UpdateEmailState(
      email: email ?? this.email,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
    );
  }
}
