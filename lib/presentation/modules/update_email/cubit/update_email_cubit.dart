part of '../update_email.dart';

class UpdateEmailCubit extends Cubit<UpdateEmailState> {
  UpdateEmailCubit(this._updateEmailUseCase) : super(const UpdateEmailState());

  final UpdateEmailUseCase _updateEmailUseCase;

  void emailChanged(String value) {
    final email = EmailForm.dirty(value);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email]),
      ),
    );
  }

  Future<void> updateEmail() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _updateEmailUseCase.call(state.email.value);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on SendVerificationEmailException catch (e) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: e.error,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: 'Failed to change email. Please try again later.',
        ),
      );
    }
  }
}
