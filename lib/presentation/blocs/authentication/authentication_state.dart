part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

final class Authenticated extends AuthenticationState {
  const Authenticated(this.user);
  final Object? user;

  @override
  List<Object?> get props => [user];
}

class Unauthenticated extends AuthenticationState {
  const Unauthenticated();
}
