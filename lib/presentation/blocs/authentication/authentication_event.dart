part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.userChanged({
    UserEntity? user,
  }) = _UserChanged;
}
