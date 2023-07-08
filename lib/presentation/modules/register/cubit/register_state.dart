part of 'register_cubit.dart';

final class RegisterState extends Equatable {
  const RegisterState({
    this.displayName = const DisplayNameForm.pure(),
    this.email = const EmailForm.pure(),
    this.password = const RegisterPasswordForm.pure(),
    this.confirmedPassword = const ConfirmedPasswordForm.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.isValid = false,
  });
  final DisplayNameForm displayName;
  final EmailForm email;
  final RegisterPasswordForm password;
  final ConfirmedPasswordForm confirmedPassword;
  final FormzSubmissionStatus status;
  final String? errorMessage;
  final bool isValid;

  RegisterState copyWith({
    DisplayNameForm? displayName,
    EmailForm? email,
    RegisterPasswordForm? password,
    ConfirmedPasswordForm? confirmedPassword,
    FormzSubmissionStatus? status,
    String? errorMessage,
    bool? isValid,
  }) {
    return RegisterState(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object> get props {
    return [
      displayName,
      email,
      password,
      confirmedPassword,
      status,
      isValid,
    ];
  }
}
