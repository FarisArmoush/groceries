part of 'forgot_password_cubit.dart';

class ForgotPasswordState extends Equatable {
  const ForgotPasswordState({
    this.email = const EmailForm.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final EmailForm email;
  final FormzStatus status;
  final String? errorMessage;

  ForgotPasswordState copyWith({
    EmailForm? email,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return ForgotPasswordState(
      email: email ?? this.email,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [email, status];
}
