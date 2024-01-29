import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/utils/exceptions/send_password_reset_email_exception.dart';
import 'package:groceries/utils/forms/email_form.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(this._sendPasswordResetEmailUseCase)
      : super(const ForgotPasswordState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_SendEmail>(_onSendEmail);
  }

  final SendPasswordResetEmailUseCase _sendPasswordResetEmailUseCase;

  void _onEmailChanged(
    _EmailChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    final email = EmailForm.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email]),
      ),
    );
  }

  Future<void> _onSendEmail(
    _SendEmail event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    if (!state.isValid) return;
    emit(
      state.copyWith(
        status: FormzSubmissionStatus.inProgress,
      ),
    );
    try {
      await _sendPasswordResetEmailUseCase(state.email.value);
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
