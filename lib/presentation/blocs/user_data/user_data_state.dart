part of 'user_data_cubit.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState({
    String? email,
    bool? emailVerified,
    String? displayName,
    String? creationDate,
  }) = _UserDataState;
}
