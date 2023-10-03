part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountEvent with _$DeleteAccountEvent {
  const factory DeleteAccountEvent.deleteAccount() = _DeleteAccount;
}
