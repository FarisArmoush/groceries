part of 'login_cubit.dart';

final class LoginState extends Equatable {
  const LoginState({
    this.email = const EmailForm.pure(),
    this.password = const LoginPasswordForm.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.errorMessage,
  });

  final EmailForm email;
  final LoginPasswordForm password;
  final FormzSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;

  LoginState copyWith({
    EmailForm? email,
    LoginPasswordForm? password,
    FormzSubmissionStatus? status,
    bool? isValid,
    String? errorMessage,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        status,
        isValid,
        errorMessage,
        isValid,
      ];
}
