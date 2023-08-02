import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';
import 'package:groceries/utils/forms/email_form.dart';
import 'package:groceries/utils/forms/login_password_form.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authenticationRepository) : super(const LoginState());

  final AuthenticationRepository authenticationRepository;

  void emailChanged(String value) {
    final email = EmailForm.dirty(value);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = LoginPasswordForm.dirty(value);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([state.email, password]),
      ),
    );
  }

  Future<void> login() async {
    if (!state.isValid) return;
    emit(
      state.copyWith(status: FormzSubmissionStatus.inProgress),
    );
    try {
      await authenticationRepository.signInWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
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
