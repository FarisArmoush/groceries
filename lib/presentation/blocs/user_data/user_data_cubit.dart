import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';

part 'user_data_state.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit(this._fetchUserDataUseCase)
      : super(const UserDataStateInitial());

  final FetchUserDataUseCase _fetchUserDataUseCase;

  String? get email => _fetchUserDataUseCase.email;
  bool? get emailVerified => _fetchUserDataUseCase.emailVerified;
  String? get displayName => _fetchUserDataUseCase.displayName;
  String? get creationDate => _fetchUserDataUseCase.creationDate;
}