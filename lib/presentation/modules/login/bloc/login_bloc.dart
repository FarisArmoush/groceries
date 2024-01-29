import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';
import 'package:groceries/utils/forms/email_form.dart';
import 'package:groceries/utils/forms/login_password_form.dart';
import 'package:groceries/utils/params/login_param/login_param.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginWithEmailAndPasswordUseCase) : super(LoginState()) {
    on<_ToggleIsObscure>(_onToggleIsObscure);
    on<_UpdateEmail>(_onUpdateEmail);
    on<_UpdatePassword>(_onUpdatePassword);
    on<_Login>(_onLogin);
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
    }
  }
}
