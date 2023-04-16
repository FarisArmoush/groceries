part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    this.email = const EmailForm.pure(),
    this.password = const LoginPasswordForm.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final EmailForm email;
  final LoginPasswordForm password;
  final FormzStatus status;
  final String? errorMessage;

  @override
  List<Object> get props => [email, password, status];

  LoginState copyWith({
    EmailForm? email,
    LoginPasswordForm? password,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
