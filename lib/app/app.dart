import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/app_easy_localization.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';

/// {@template app_auth_repo_provider}
/// A widget that provides the [AuthenticationRepositoryImpl]
/// and [AuthBloc] to its descendants. (All around the app)
///
/// The [authRepository] parameter is the required
/// [AuthenticationRepositoryImpl] instance.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app_auth_repo_provider}
  const App({
    required this.authRepository,
    super.key,
  });
  final AuthenticationRepositoryImpl authRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authRepository,
      child: BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(
          authRepo: authRepository,
        ),
        child: const AppEasyLocalization(),
      ),
    );
  }
}
