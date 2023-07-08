part of 'update_email_cubit.dart';

final class UpdateEmailState extends Equatable {
  const UpdateEmailState({
    this.email = const EmailForm.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final EmailForm email;
  final FormzStatus status;
  final String? errorMessage;
  @override
  List<Object> get props => [email, status];

  UpdateEmailState copyWith({
    EmailForm? email,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return UpdateEmailState(
      email: email ?? this.email,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
