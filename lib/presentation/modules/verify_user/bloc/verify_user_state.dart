part of 'verify_user_bloc.dart';

@freezed
class VerifyUserState with _$VerifyUserState {
  const factory VerifyUserState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _VerifyUserState;

  const VerifyUserState._();
}
