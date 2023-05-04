import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/app/utils/exceptions/register_with_email_and_password_failure.dart';
import 'package:groceries/app/utils/forms/confirmed_password_form.dart';
import 'package:groceries/app/utils/forms/display_name_form.dart';
import 'package:groceries/app/utils/forms/email_form.dart';
import 'package:groceries/app/utils/forms/register_password_form.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(const RegisterState());

  final FirebaseAuthRepository authRepo;

  void displayNameChanged(String value) {
    final displayName = DisplayNameForm.dirty(value);
    emit(
      state.copyWith(
        displayName: displayName,
        status: Formz.validate([
          displayName,
          state.email,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void emailChanged(String value) {
    final email = EmailForm.dirty(value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([
          state.displayName,
          email,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = RegisterPasswordForm.dirty(value);
    final confirmedPassword = ConfirmedPasswordForm.dirty(
      password: password.value,
      value: state.confirmedPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          state.displayName,
          state.email,
          password,
          confirmedPassword,
        ]),
      ),
    );
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmedPasswordForm.dirty(
      password: state.password.value,
      value: value,
    );
    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          state.displayName,
          state.email,
          state.password,
          confirmedPassword,
        ]),
      ),
    );
  }

  Future<void> register() async {
    if (state.status.isValidated == false) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await authRepo.signUpWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
        displayName: state.displayName.value,
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on RegisterWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzStatus.submissionFailure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
