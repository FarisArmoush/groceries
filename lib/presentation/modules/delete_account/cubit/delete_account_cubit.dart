part of '../delete_account.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit({
    required this.authRepo,
  }) : super(DeleteAccountInitial());

  final AuthenticationRepository authRepo;

  Future<void> deleteAccount() async {
    emit(DeleteAccountLoading());
    try {
      await authRepo.deleteAccount();
      emit(AccountDeleteSuccess());
    } on DeleteAccountException catch (_) {
      emit(AccountDeleteFailed());
    }
  }
}
