import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/domain/repositories/repositories.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this._authenticationRepository)
      : super(
          _authenticationRepository.currentUser != null
              ? Authenticated(_authenticationRepository.currentUser)
              : const Unauthenticated(),
        ) {
    on<_AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);

    _userSubscription = _authenticationRepository.authStateChanges.listen(
      (user) => add(
        _AppUserChanged(user),
      ),
    ) as StreamSubscription<User?>;
  }
  late final StreamSubscription<Object?> _userSubscription;

  final AuthenticationRepository _authenticationRepository;

  void _onUserChanged(
    _AppUserChanged event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(
      event.user != null
          ? Authenticated(_authenticationRepository.currentUser)
          : const Unauthenticated(),
    );
  }

  Future<void> _onLogoutRequested(
    AppLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authenticationRepository.logOut();
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
