import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/utils/exceptions/exceptions.dart';
import 'package:groceries/utils/forms/app_forms.dart';
import 'package:groceries/utils/params/register_param/register_param.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._registerWithEmailAndPasswordUseCase)
      : super(RegisterState()) {
    on<_UpdateDisplayName>(_onUpdateDisplayName);
    on<_UpdateEmail>(_onUpdateEmail);
    on<_UpdatePassword>(_onUpdatePassword);
    on<_UpdateConfirmPassword>(_onUpdateConfirmPassword);
    on<_ToggleIsObscure>(_onToggleIsObscure);
    on<_Register>(_onRegister);
  }

  final RegisterWithEmailAndPasswordUseCase
      _registerWithEmailAndPasswordUseCase;

  void _onUpdateDisplayName(
    _UpdateDisplayName event,
    Emitter<RegisterState> emit,
  ) {
    final displayName = DisplayNameForm.dirty(event.displayName);
    emit(
      state.copyWith(
        displayName: displayName,
        isValid: Formz.validate([
          displayName,
          state.email,
          state.password,
          state.confirmPassword,
        ]),
      ),
    );
  }

  void _onUpdateEmail(
    _UpdateEmail event,
    Emitter<RegisterState> emit,
  ) {
    final email = EmailForm.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([
          state.displayName,
          email,
          state.password,
          state.confirmPassword,
        ]),
      ),
    );
  }

  void _onUpdatePassword(
    _UpdatePassword event,
    Emitter<RegisterState> emit,
  ) {
    final password = RegisterPasswordForm.dirty(event.password);
    final confirmedPassword = ConfirmedPasswordForm.dirty(
      password: password.value,
      value: state.confirmPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        confirmPassword: confirmedPassword,
        isValid: Formz.validate([
          state.displayName,
          state.email,
          password,
          confirmedPassword,
        ]),
      ),
    );
  }

  void _onUpdateConfirmPassword(
    _UpdateConfirmPassword event,
    Emitter<RegisterState> emit,
  ) {
    final confirmedPassword = ConfirmedPasswordForm.dirty(
      password: state.password.value,
      value: event.password,
    );
    emit(
      state.copyWith(
        confirmPassword: confirmedPassword,
        isValid: Formz.validate([
          state.displayName,
          state.email,
          state.password,
          confirmedPassword,
        ]),
      ),
    );
  }

  void _onToggleIsObscure(
    _ToggleIsObscure event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(isObscure: !state.isObscure));
  }

  Future<void> _onRegister(
    _Register event,
    Emitter<RegisterState> emit,
  ) async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _registerWithEmailAndPasswordUseCase(
        RegisterParam(
          email: state.email.value,
          password: state.password.value,
          displayName: state.displayName.value,
        ),
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on RegisterWithEmailAndPasswordException catch (e) {
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
