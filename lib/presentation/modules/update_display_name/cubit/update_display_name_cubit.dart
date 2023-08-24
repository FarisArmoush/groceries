part of '../update_display_name.dart';

class UpdateDisplayNameCubit extends Cubit<UpdateDisplayNameState> {
  UpdateDisplayNameCubit(this._updateDisplayNameUseCase)
      : super(const UpdateDisplayNameState());
  final UpdateDisplayNameUseCase _updateDisplayNameUseCase;
  void nameChanged(String value) {
    final name = DisplayNameForm.dirty(value);
    emit(
      state.copyWith(
        name: name,
        isValid: Formz.validate([name]),
      ),
    );
  }

  Future<void> updateDisplayName() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _updateDisplayNameUseCase.call(state.name.value);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: 'Something went wrong.',
        ),
      );
    }
  }
}
