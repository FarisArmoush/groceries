part of '../app.dart';

class App extends StatelessWidget {
  const App({
    required this.sharedPreferences,
    required this.flavor,
    super.key,
  });

  final SharedPreferences sharedPreferences;
  final AppFlavor flavor;

  @override
  Widget build(BuildContext context) {
    return InstancesProvider(
      flavor: flavor,
      sharedPreferences: sharedPreferences,
      child: const DataSourcesProvider(
        child: RepositoriesProvider(
          child: UseCasesProvider(
            child: BlocsProviders(),
          ),
        ),
      ),
    );
  }
}
