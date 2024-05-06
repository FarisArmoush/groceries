part of 'user_data_cubit.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState({
    UserEntity? user,
  }) = _UserDataState;
}
