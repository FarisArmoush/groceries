part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();
  const factory AuthenticationState.authenticated({
    UserModel? user,
  }) = _Authenticated;
  const factory AuthenticationState.unAuthenticated() = _UnAuthenticated;
}
