import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/send_password_reset_email_use_case.dart';
import 'package:groceries/presentation/forms/email_form.dart';
import 'package:groceries/shared/exceptions/app_network_exception.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(this._sendPasswordResetEmailUseCase)
      : super(
          ForgotPasswordState(
            emailNode: FocusNode(),
          ),
        ) {
    on<ForgotPasswordEvent>(
      (event, emit) => event.map(
        emailChanged: (event) => _onEmailChanged(event, emit),
        sendEmail: (event) => _onSendEmail(event, emit),
        dismissKeyboard: (event) => _onDismissKeyboard(event, emit),
      ),
    );
  }

  final SendPasswordResetEmailUseCase _sendPasswordResetEmailUseCase;

  void _onDismissKeyboard(
    _DismissKeyboard event,
    Emitter<ForgotPasswordState> emit,
  ) {
    state.emailNode!.unfocus();
  }

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
    } on AppNetworkException catch (e) {
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
    } finally {
      await Future.delayed(
        const Duration(milliseconds: 200),
        () => emit(state.copyWith(status: FormzSubmissionStatus.initial)),
      );
    }
  }
}
