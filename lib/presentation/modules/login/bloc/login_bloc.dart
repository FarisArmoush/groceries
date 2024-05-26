import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/login_with_email_and_password_use_case.dart';
import 'package:groceries/presentation/forms/email_form.dart';
import 'package:groceries/presentation/forms/login_password_form.dart';
import 'package:groceries/shared/exceptions/app_network_exception.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginWithEmailAndPasswordUseCase)
      : super(
          LoginState(
            emailNode: FocusNode(),
            passwordNode: FocusNode(),
          ),
        ) {
    on<LoginEvent>(
      (event, emit) => event.map(
        updateEmail: (event) => _onUpdateEmail(event, emit),
        updatePassword: (event) => _onUpdatePassword(event, emit),
        toggleIsObscure: (event) => _onToggleIsObscure(event, emit),
        submit: (event) => _onSubmit(event, emit),
        resetState: (event) => _onResetState(event, emit),
        dismissKeyboard: (event) => _onDismissKeyboard(event, emit),
      ),
    );
  }
  final LoginWithEmailAndPasswordUseCase _loginWithEmailAndPasswordUseCase;

  void _onDismissKeyboard(
    _DismissKeyboard event,
    Emitter<LoginState> emit,
  ) {
    state.emailNode!.unfocus();
    state.passwordNode!.unfocus();
  }

  void _onResetState(
    _ResetState event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        isValid: false,
        isObscure: true,
        status: FormzSubmissionStatus.initial,
        email: const EmailForm.pure(),
        password: const LoginPasswordForm.pure(),
        errorMessage: null,
      ),
    );
  }

  void _onUpdateEmail(
    _UpdateEmail event,
    Emitter<LoginState> emit,
  ) {
    final email = EmailForm.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password]),
      ),
    );
  }

  void _onUpdatePassword(
    _UpdatePassword event,
    Emitter<LoginState> emit,
  ) {
    final password = LoginPasswordForm.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([state.email, password]),
      ),
    );
  }

  void _onToggleIsObscure(
    _ToggleIsObscure event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        isObscure: !state.isObscure,
      ),
    );
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<LoginState> emit,
  ) async {
    if (!state.isValid) return;
    emit(
      state.copyWith(status: FormzSubmissionStatus.inProgress),
    );
    try {
      await _loginWithEmailAndPasswordUseCase(
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on AppNetworkException catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    } finally {
      await Future.delayed(
        const Duration(milliseconds: 200),
        () => emit(state.copyWith(status: FormzSubmissionStatus.initial)),
      );
    }
  }
}
