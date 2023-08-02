import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';

part 'verify_user_state.dart';

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
