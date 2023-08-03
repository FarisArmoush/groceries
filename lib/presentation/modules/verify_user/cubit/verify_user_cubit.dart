part of '../verify_user.dart';

class VerifyUserCubit extends Cubit<VerifyUserState> {
  VerifyUserCubit(this.authenticationRepository) : super(VerifyUserInitial());

  final AuthenticationRepository authenticationRepository;

  Future<void> sendVerificationEmail() async {
    emit(VerificationLoading());
    try {
      await authenticationRepository.sendVerificationEmail();
      emit(VerifiedSuccessfully());
    } catch (e) {
      emit(VerificationFailed());
    }
  }
}
