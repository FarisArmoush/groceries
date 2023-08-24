part of '../delete_account.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit(this.deleteAccountUseCase) : super(DeleteAccountInitial());

  final DeleteAccountUseCase deleteAccountUseCase;

  Future<void> deleteAccount() async {
    emit(DeleteAccountLoading());
    try {
      await deleteAccountUseCase.call();
      emit(AccountDeleteSuccess());
    } on DeleteAccountException catch (_) {
      emit(AccountDeleteFailed());
    }
  }
}
