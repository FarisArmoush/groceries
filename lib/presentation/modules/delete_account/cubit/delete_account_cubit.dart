import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/utils/exceptions/delete_account_exception.dart';

part 'delete_account_state.dart';

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
