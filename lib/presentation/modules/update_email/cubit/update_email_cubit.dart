import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/utils/forms/email_form.dart';

part 'update_email_state.dart';

class UpdateEmailCubit extends Cubit<UpdateEmailState> {
  UpdateEmailCubit(
    this.authRepository,
  ) : super(const UpdateEmailState());

  final FirebaseAuthRepository authRepository;
  void emailChanged(String value) {
    final email = EmailForm.dirty(value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email]),
      ),
    );
  }

  Future<void> updateEmail() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await authRepository.updateEmail(state.email.value);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: 'Something went wrong.',
        ),
      );
    }
  }
}
