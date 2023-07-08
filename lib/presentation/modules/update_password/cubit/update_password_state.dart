part of 'update_password_cubit.dart';

final class UpdatePasswordState extends Equatable {
  const UpdatePasswordState({
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
  List<Object> get props => [email, status, isValid];

  UpdatePasswordState copyWith({
    EmailForm? email,
    FormzSubmissionStatus? status,
    String? errorMessage,
    bool? isValid,
  }) {
    return UpdatePasswordState(
      email: email ?? this.email,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
    );
  }
}
