import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/utils/forms/email_form.dart';

part 'update_email_state.dart';

class UpdateEmailCubit extends Cubit<UpdateEmailState> {
  UpdateEmailCubit(
    this.authenticationRepository,
  ) : super(const UpdateEmailState());

  final AuthenticationRepository authenticationRepository;
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
      await authenticationRepository.updateEmail(state.email.value);
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
