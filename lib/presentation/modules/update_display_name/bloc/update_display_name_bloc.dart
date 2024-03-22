import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/update_display_name_use_case.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:groceries/utils/forms/display_name_form.dart';
import 'package:injectable/injectable.dart';

part 'update_display_name_bloc.freezed.dart';
part 'update_display_name_event.dart';
part 'update_display_name_state.dart';

@injectable
class UpdateDisplayNameBloc
    extends Bloc<UpdateDisplayNameEvent, UpdateDisplayNameState> {
  UpdateDisplayNameBloc(this._updateDisplayNameUseCase)
      : super(const UpdateDisplayNameState()) {
    on<UpdateDisplayNameEvent>(
      (event, emit) => event.map(
        displayNameChanged: (event) => _onDisplayNameChanged(event, emit),
        submit: (event) => _onSubmit(event, emit),
      ),
    );
  }

  final UpdateDisplayNameUseCase _updateDisplayNameUseCase;

  Future<void> _onSubmit(
    _Submit event,
    Emitter<UpdateDisplayNameState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _updateDisplayNameUseCase(state.displayName.value);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: AppTranslations.errorMessages.defaultErrorMessage,
        ),
      );
    } finally {
      await Future.delayed(
        200.milliseconds,
        () => emit(state.copyWith(status: FormzSubmissionStatus.initial)),
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
