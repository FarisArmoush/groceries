import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/app/utils/exceptions/delete_account_exception.dart';

part 'delete_account_state.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit({
    FirebaseAuthRepository? authRepo,
  })  : _authRepo = authRepo ?? FirebaseAuthRepository(),
        super(DeleteAccountInitial());

  final FirebaseAuthRepository _authRepo;

  Future<void> deleteAccount() async {
    emit(DeleteAccountLoading());
    try {
      await _authRepo.deleteAccount();
      emit(AccountDeleteSuccess());
    } on DeleteAccountException catch (_) {
      emit(AccountDeleteFailed());
    }
  }
}
