import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/app_view.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';

class App extends StatelessWidget {
  const App({
    required FirebaseAuthRepository authRepository,
    super.key,
  })  : _authRepository = authRepository;
  final FirebaseAuthRepository _authRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authRepository,
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepo: _authRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}
