import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';

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

  final FirebaseAuthRepository authRepo;

  void _onUserChanged(_AppUserChanged event, Emitter<AuthState> emit) {
    // if (event.user != null) {
    //   emit(Authenticated(authRepo.currentUser));
    // }
    // if (event.user == null) {
    //   emit(const Unauthenticated());
    // }
    // if (event.user?.emailVerified == false) {
    //   emit(NotVerified());
    // }
    emit(
      event.user != null
          ? Authenticated(authRepo.currentUser)
          : const Unauthenticated(),
    );
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AuthState> emit) {
    unawaited(authRepo.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
