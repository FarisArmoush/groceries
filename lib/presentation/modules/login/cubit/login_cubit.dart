part of '../login.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginWithEmailAndPasswordUseCase)
      : super(const LoginState());

  final LoginWithEmailAndPasswordUseCase _loginWithEmailAndPasswordUseCase;

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

  void toggleIsObscure() => emit(state.copyWith(isObscure: !state.isObscure));

  Future<void> login() async {
    if (!state.isValid) return;
    emit(
      state.copyWith(status: FormzSubmissionStatus.inProgress),
    );
    try {
      await _loginWithEmailAndPasswordUseCase.call(
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
