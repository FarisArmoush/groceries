import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authRepo})
      : super(
          authRepo.currentUser != null
              ? Authenticated(authRepo.currentUser)
              : const Unauthenticated(),
        ) {
    on<_AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);

    _userSubscription = authRepo.authStateChanges.listen(
      (user) => add(
        _AppUserChanged(user),
      ),
    );
  }
  late final StreamSubscription<User?> _userSubscription;

  final AuthenticationRepositoryImpl authRepo;

  void _onUserChanged(_AppUserChanged event, Emitter<AuthState> emit) {
    emit(
      event.user != null
          ? Authenticated(authRepo.currentUser)
          : const Unauthenticated(),
    );
  }

  Future<void> _onLogoutRequested(
    AppLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    await authRepo.logOut();
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
