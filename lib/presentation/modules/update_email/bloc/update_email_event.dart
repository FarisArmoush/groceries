part of 'update_email_bloc.dart';

@freezed
class UpdateEmailEvent with _$UpdateEmailEvent {
  const factory UpdateEmailEvent.emailChanged(String email) = _EmailChanged;
  const factory UpdateEmailEvent.updateEmail() = _UpdateEmail;
}
