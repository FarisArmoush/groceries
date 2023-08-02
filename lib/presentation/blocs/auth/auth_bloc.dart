import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authenticationRepository})
      : super(
          authenticationRepository.currentUser != null
              ? Authenticated(authenticationRepository.currentUser)
              : const Unauthenticated(),
        ) {
    on<_AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);

    _userSubscription = authenticationRepository.authStateChanges.listen(
      (user) => add(
        _AppUserChanged(user),
      ),
    );
  }
  late final StreamSubscription<User?> _userSubscription;

  final AuthenticationRepositoryImpl authenticationRepository;

  void _onUserChanged(_AppUserChanged event, Emitter<AuthState> emit) {
    emit(
      event.user != null
          ? Authenticated(authenticationRepository.currentUser)
          : const Unauthenticated(),
    );
  }

  Future<void> _onLogoutRequested(
    AppLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    await authenticationRepository.logOut();
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
