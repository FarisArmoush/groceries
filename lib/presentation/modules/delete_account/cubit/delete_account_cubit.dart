part of '../delete_account.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit(this._deleteAccountUseCase)
      : super(DeleteAccountInitial());

  final DeleteAccountUseCase _deleteAccountUseCase;

  Future<void> deleteAccount() async {
    emit(DeleteAccountLoading());
    try {
      await _deleteAccountUseCase.call();
      emit(AccountDeleteSuccess());
    } on DeleteAccountException catch (_) {
      emit(AccountDeleteFailed());
    }
  }
}
