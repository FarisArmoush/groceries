part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

final class AppLogoutRequested extends AuthenticationEvent {
  const AppLogoutRequested();
}

final class _AppUserChanged extends AuthenticationEvent {
  const _AppUserChanged(this.user);

  final User? user;
}
