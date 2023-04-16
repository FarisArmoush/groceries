part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AppLogoutRequested extends AuthEvent {
  const AppLogoutRequested();
}

class _AppUserChanged extends AuthEvent {
  const _AppUserChanged(this.user);

  final User? user;
}
