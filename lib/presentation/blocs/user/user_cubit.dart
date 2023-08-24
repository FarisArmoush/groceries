import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_data_use_case.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this._fetchUserDataUseCase) : super(const UserStateInitial());

  final FetchUserDataUseCase _fetchUserDataUseCase;

  String? get email => _fetchUserDataUseCase.email;
  bool? get emailVerified => _fetchUserDataUseCase.emailVerified;
  String? get displayName => _fetchUserDataUseCase.displayName;
  String? get creationDate => _fetchUserDataUseCase.creationDate;
}
