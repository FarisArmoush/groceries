part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.logout() = _Logout;
  const factory AuthenticationEvent.userChanged({
    Object? user,
  }) = _UserChanged;
}
