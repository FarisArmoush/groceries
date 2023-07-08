import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/utils/forms/display_name_form.dart';

part 'update_display_name_state.dart';

class UpdateDisplayNameCubit extends Cubit<UpdateDisplayNameState> {
  UpdateDisplayNameCubit(
    this.authRepository,
  ) : super(const UpdateDisplayNameState());

  final FirebaseAuthRepository authRepository;
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
      await authRepository.updateDisplayName(state.name.value);
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
