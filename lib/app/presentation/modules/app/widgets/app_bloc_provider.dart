import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/presentation/modules/app/views/app_view.dart';

class App extends StatelessWidget {
  const App({
    required FirebaseAuthRepository authRepository,
    Key? key,
  })  : _authRepository = authRepository,
        super(key: key);
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
