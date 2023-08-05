import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/app_easy_localization.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';
import 'package:groceries/presentation/blocs/authentication/authentication_bloc.dart';

class App extends StatelessWidget {
  const App({
    required this.authenticationRepository,
    super.key,
  });
  final AuthenticationRepositoryImpl authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider<AuthenticationBloc>(
        create: (context) => AuthenticationBloc(
          authenticationRepository: authenticationRepository,
        ),
        child: const AppEasyLocalization(),
      ),
    );
  }
}
