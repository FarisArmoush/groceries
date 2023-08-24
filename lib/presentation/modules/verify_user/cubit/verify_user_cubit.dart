part of '../verify_user.dart';

class VerifyUserCubit extends Cubit<VerifyUserState> {
  VerifyUserCubit(this.verifyUserUseCase) : super(VerifyUserInitial());

  final VerifyUserUseCase verifyUserUseCase;

  Future<void> sendVerificationEmail() async {
    emit(VerificationLoading());
    try {
      await verifyUserUseCase.call();
      emit(VerifiedSuccessfully());
    } catch (e) {
      emit(VerificationFailed());
    }
  }
}
