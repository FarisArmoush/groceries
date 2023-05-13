part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState({
    this.displayName = const DisplayNameForm.pure(),
    this.email = const EmailForm.pure(),
    this.password = const RegisterPasswordForm.pure(),
    this.confirmedPassword = const ConfirmedPasswordForm.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });
  final DisplayNameForm displayName;
  final EmailForm email;
  final RegisterPasswordForm password;
  final ConfirmedPasswordForm confirmedPassword;
  final FormzStatus status;
  final String? errorMessage;

  RegisterState copyWith({
    DisplayNameForm? displayName,
    EmailForm? email,
    RegisterPasswordForm? password,
    ConfirmedPasswordForm? confirmedPassword,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return RegisterState(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [
        displayName,
        email,
        password,
        confirmedPassword,
        status,
      ];
}
