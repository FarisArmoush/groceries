import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';

part 'verify_user_state.dart';

class VerifyUserCubit extends Cubit<VerifyUserState> {
  VerifyUserCubit(this.authRepository) : super(VerifyUserInitial());

  final FirebaseAuthRepository authRepository;

  Future<void> sendVerificationEmail() async {
    emit(VerificationLoading());
    try {
      await authRepository.sendVerificationEmail();
      emit(VerifiedSuccessfully());
    } catch (e) {
      emit(VerificationFailed());
    }
  }
}