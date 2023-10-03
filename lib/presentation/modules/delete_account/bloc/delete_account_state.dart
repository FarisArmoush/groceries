part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _DeleteAccountState;

  const DeleteAccountState._();
}
