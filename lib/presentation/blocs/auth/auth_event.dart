part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

final class AppLogoutRequested extends AuthEvent {
  const AppLogoutRequested();
}

final class _AppUserChanged extends AuthEvent {
  const _AppUserChanged(this.user);

  final User? user;
}
