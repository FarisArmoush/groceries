import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/login_with_email_and_password_use_case.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:groceries/utils/forms/email_form.dart';
import 'package:groceries/utils/forms/login_password_form.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginWithEmailAndPasswordUseCase) : super(LoginState()) {
    on<LoginEvent>(
      (event, emit) => event.map(
        updateEmail: (event) => _onUpdateEmail(event, emit),
        updatePassword: (event) => _onUpdatePassword(event, emit),
        toggleIsObscure: (event) => _onToggleIsObscure(event, emit),
        login: (event) => _onLogin(event, emit),
      ),
    );
  }
  final LoginWithEmailAndPasswordUseCase _loginWithEmailAndPasswordUseCase;

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

  Future<void> _onLogin(_Login event, Emitter<LoginState> emit) async {
    if (!state.isValid) return;
    emit(
      state.copyWith(status: FormzSubmissionStatus.inProgress),
    );
    try {
      await _loginWithEmailAndPasswordUseCase(
        LoginParam(
          email: state.email.value,
          password: state.password.value,
        ),
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on LoginWithEmailAndPasswordException catch (e) {
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
        200.milliseconds,
        () => emit(state.copyWith(status: FormzSubmissionStatus.initial)),
      );
    }
  }
}
