import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/utils/forms/app_forms.dart';

part 'update_display_name_event.dart';
part 'update_display_name_state.dart';
part 'update_display_name_bloc.freezed.dart';

class UpdateDisplayNameBloc
    extends Bloc<UpdateDisplayNameEvent, UpdateDisplayNameState> {
  UpdateDisplayNameBloc(this._updateDisplayNameUseCase)
      : super(const UpdateDisplayNameState()) {
    on<_DisplayNameChanged>(_onDisplayNameChanged);

    on<_UpdateDisplayName>(_onUpdateDisplayName);
  }

  final UpdateDisplayNameUseCase _updateDisplayNameUseCase;

  Future<void> _onUpdateDisplayName(
    _UpdateDisplayName event,
    Emitter<UpdateDisplayNameState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _updateDisplayNameUseCase.call(state.displayName.value);
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

  void _onDisplayNameChanged(
    _DisplayNameChanged event,
    Emitter<UpdateDisplayNameState> emit,
  ) {
    final displayName = DisplayNameForm.dirty(event.displayName);
    emit(
      state.copyWith(
        displayName: displayName,
        isValid: Formz.validate([displayName]),
      ),
    );
  }
}
