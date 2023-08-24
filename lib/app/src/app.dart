part of '../app.dart';

class App extends StatelessWidget {
  const App({
    required this.authenticationRepository,
    super.key,
  });
  final AuthenticationRepository authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>.value(
          value: authenticationRepository,
        ),
      ],
      child: BlocProvider<AuthenticationBloc>(
        create: (context) => AuthenticationBloc(authenticationRepository),
        child: const AppRepositoriesProvider(),
      ),
    );
  }
}
