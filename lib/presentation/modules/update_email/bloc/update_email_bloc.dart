import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/update_email_use_case.dart';
import 'package:groceries/presentation/forms/email_form.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:injectable/injectable.dart';

part 'update_email_bloc.freezed.dart';
part 'update_email_event.dart';
part 'update_email_state.dart';

@injectable
class UpdateEmailBloc extends Bloc<UpdateEmailEvent, UpdateEmailState> {
  UpdateEmailBloc(this._updateEmailUseCase) : super(const UpdateEmailState()) {
    on<UpdateEmailEvent>(
      (event, emit) => event.map(
        emailChanged: (event) => _onEmailChanged(event, emit),
        submit: (event) => _onSubmit(event, emit),
      ),
    );
  }
  final UpdateEmailUseCase _updateEmailUseCase;

  Future<void> _onSubmit(
    _Submit event,
    Emitter<UpdateEmailState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _updateEmailUseCase(state.email.value);
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
        200.milliseconds,
        () => emit(state.copyWith(status: FormzSubmissionStatus.initial)),
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
