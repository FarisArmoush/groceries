part of 'verify_user_bloc.dart';

@freezed
class VerifyUserEvent with _$VerifyUserEvent {
  const factory VerifyUserEvent.submit() = _Submit;
}
