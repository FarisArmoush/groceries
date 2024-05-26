import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/update_display_name_use_case.dart';
import 'package:groceries/presentation/forms/display_name_form.dart';
import 'package:groceries/shared/exceptions/app_network_exception.dart';
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
    } on AppNetworkException catch (e) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: e.message,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: Translations.errors.defaultError,
        ),
      );
    } finally {
      await Future.delayed(
        const Duration(milliseconds: 200),
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
