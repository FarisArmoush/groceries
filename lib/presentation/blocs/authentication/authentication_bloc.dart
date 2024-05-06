import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/entities/user/user_entity.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/auth_state_changes_stream_use_case.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_use_case.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this._fetchUserUseCase,
    this._authStateChangesStreamUseCase,
  ) : super(
          _fetchUserUseCase() != null
              ? _Authenticated(user: _fetchUserUseCase())
              : const _UnAuthenticated(),
        ) {
    on<AuthenticationEvent>(
      (event, emit) => event.map(
        userChanged: (event) => _onUserChanged(event, emit),
      ),
    );

    _userSubscription = _authStateChangesStreamUseCase().listen(
      (user) => add(_UserChanged(user: user)),
    );
  }
  final AuthStateChangesStreamUseCase _authStateChangesStreamUseCase;
  final FetchUserUseCase _fetchUserUseCase;

  late final StreamSubscription<UserEntity?> _userSubscription;

  void _onUserChanged(
    _UserChanged event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(
      event.user != null
          ? _Authenticated(user: _fetchUserUseCase())
          : const _UnAuthenticated(),
    );
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
