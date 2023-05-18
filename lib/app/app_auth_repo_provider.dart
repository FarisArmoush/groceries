import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/app_view.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';

/// {@template app_auth_repo_provider}
/// A widget that provides the [FirebaseAuthRepository]
/// and [AuthBloc] to its descendants. (All around the app)
///
/// The [authRepository] parameter is the required
/// [FirebaseAuthRepository] instance.
/// {@endtemplate}
class AppAuthRepoProvider extends StatelessWidget {
  /// {@macro app_auth_repo_provider}
  const AppAuthRepoProvider({
    required this.authRepository,
    super.key,
  });
  final FirebaseAuthRepository authRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authRepository,
      child: BlocProvider(
        create: (context) => AuthBloc(
          authRepo: authRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}
