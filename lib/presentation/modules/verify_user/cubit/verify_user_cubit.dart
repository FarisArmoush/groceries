part of '../verify_user.dart';

class VerifyUserCubit extends Cubit<VerifyUserState> {
  VerifyUserCubit(this._verifyUserUseCase) : super(VerifyUserInitial());

  final VerifyUserUseCase _verifyUserUseCase;

  Future<void> sendVerificationEmail() async {
    emit(VerificationLoading());
    try {
      await _verifyUserUseCase.call();
      emit(VerifiedSuccessfully());
    } catch (e) {
      emit(VerificationFailed());
    }
  }
}
