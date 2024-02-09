import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this._authenticationRepository)
      : super(
          _authenticationRepository.currentUser != null
              ? _Authenticated(user: _authenticationRepository.currentUser)
              : const _UnAuthenticated(),
        ) {
    on<AuthenticationEvent>(
      (event, emit) => event.map(
        userChanged: (event) => _onUserChanged(event, emit),
      ),
    );

    _userSubscription = _authenticationRepository.authStateChanges.listen(
      (user) => add(
        _UserChanged(user: user),
      ),
    ) as StreamSubscription<User?>;
  }
  final AuthenticationRepository _authenticationRepository;

  late final StreamSubscription<User?> _userSubscription;

  void _onUserChanged(
    _UserChanged event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(
      event.user != null
          ? _Authenticated(user: _authenticationRepository.currentUser)
          : const _UnAuthenticated(),
    );
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
