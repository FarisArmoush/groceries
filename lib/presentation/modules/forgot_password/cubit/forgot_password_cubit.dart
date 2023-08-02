import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/utils/exceptions/send_password_reset_email_exception.dart';
import 'package:groceries/utils/forms/email_form.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit(this.authenticationRepository)
      : super(const ForgotPasswordState());

  final AuthenticationRepository authenticationRepository;

  void emailChanged(String value) {
    final email = EmailForm.dirty(value);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email]),
      ),
    );
  }

  Future<void> sendEmail() async {
    if (!state.isValid) return;
    emit(
      state.copyWith(
        status: FormzSubmissionStatus.inProgress,
      ),
    );
    try {
      await authenticationRepository.sendPasswordResetEmail(
        email: state.email.value,
      );
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
        ),
      );
    } on SendPasswordResetEmailException catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
        ),
      );
    }
  }
}
