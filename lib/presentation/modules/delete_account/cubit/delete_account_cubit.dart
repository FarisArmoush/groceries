import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';
import 'package:groceries/utils/exceptions/delete_account_exception.dart';

part 'delete_account_state.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit({
    AuthenticationRepositoryImpl? authRepo,
  })  : _authRepo = authRepo ?? AuthenticationRepositoryImpl(),
        super(DeleteAccountInitial());

  final AuthenticationRepositoryImpl _authRepo;

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
