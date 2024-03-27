import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/register_with_email_and_password_use_case.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:groceries/utils/forms/confirmed_password_form.dart';
import 'package:groceries/utils/forms/display_name_form.dart';
import 'package:groceries/utils/forms/email_form.dart';
import 'package:groceries/utils/forms/register_password_form.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._registerWithEmailAndPasswordUseCase)
      : super(RegisterState()) {
    on<RegisterEvent>(
      (event, emit) => event.map(
        updateDisplayName: (event) => _onUpdateDisplayName(event, emit),
        updateEmail: (event) => _onUpdateEmail(event, emit),
        updatePassword: (event) => _onUpdatePassword(event, emit),
        updateConfirmPassword: (event) => _onUpdateConfirmPassword(event, emit),
        toggleIsObscure: (event) => _onToggleIsObscure(event, emit),
        submit: (event) => _onSubmit(event, emit),
        resetState: (event) => _onResetState(event, emit),
      ),
    );
  }

  final RegisterWithEmailAndPasswordUseCase
      _registerWithEmailAndPasswordUseCase;

  void _onResetState(
    _ResetState event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        isValid: false,
        isObscure: true,
        status: FormzSubmissionStatus.initial,
        confirmPassword: const ConfirmedPasswordForm.pure(),
        displayName: const DisplayNameForm.pure(),
        email: const EmailForm.pure(),
        password: const RegisterPasswordForm.pure(),
        errorMessage: null,
      ),
    );
  }

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

  Future<void> _onSubmit(
    _Submit event,
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
        200.milliseconds,
        () => emit(state.copyWith(status: FormzSubmissionStatus.initial)),
      );
    }
  }
}
