part of 'update_password_cubit.dart';

class UpdatePasswordState extends Equatable {
  const UpdatePasswordState({
    this.email = const EmailForm.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final EmailForm email;
  final FormzStatus status;
  final String? errorMessage;
  @override
  List<Object> get props => [email, status];

  UpdatePasswordState copyWith({
    EmailForm? email,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return UpdatePasswordState(
      email: email ?? this.email,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
