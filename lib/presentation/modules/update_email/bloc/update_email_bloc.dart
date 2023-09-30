import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/utils/exceptions/exceptions.dart';
import 'package:groceries/utils/forms/app_forms.dart';

part 'update_email_event.dart';
part 'update_email_state.dart';
part 'update_email_bloc.freezed.dart';

class UpdateEmailBloc extends Bloc<UpdateEmailEvent, UpdateEmailState> {
  UpdateEmailBloc(this._updateEmailUseCase) : super(const UpdateEmailState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_UpdateEmail>(_onUpdateEmail);
  }
  final UpdateEmailUseCase _updateEmailUseCase;

  Future<void> _onUpdateEmail(
    _UpdateEmail event,
    Emitter<UpdateEmailState> emit,
  ) async {
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

  void _onEmailChanged(
    _EmailChanged event,
    Emitter<UpdateEmailState> emit,
  ) {
    final email = EmailForm.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email]),
      ),
    );
  }
}
