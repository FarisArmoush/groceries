part of '../register.dart';

final class RegisterState extends Equatable {
  const RegisterState({
    this.displayName = const DisplayNameForm.pure(),
    this.email = const EmailForm.pure(),
    this.password = const RegisterPasswordForm.pure(),
    this.confirmedPassword = const ConfirmedPasswordForm.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.isValid = false,
    this.isObscure = true,
  });
  final DisplayNameForm displayName;
  final EmailForm email;
  final RegisterPasswordForm password;
  final ConfirmedPasswordForm confirmedPassword;
  final FormzSubmissionStatus status;
  final String? errorMessage;
  final bool isValid;
  final bool isObscure;

  RegisterState copyWith({
    DisplayNameForm? displayName,
    EmailForm? email,
    RegisterPasswordForm? password,
    ConfirmedPasswordForm? confirmedPassword,
    FormzSubmissionStatus? status,
    String? errorMessage,
    bool? isValid,
    bool? isObscure,
  }) {
    return RegisterState(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
      isObscure: isObscure ?? this.isObscure,
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
      isObscure,
    ];
  }
}
