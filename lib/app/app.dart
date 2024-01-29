import 'package:flutter/material.dart';
import 'package:groceries/app/blocs_providers.dart';
import 'package:groceries/app/data_sources_provider.dart';
import 'package:groceries/app/instances_provider.dart';
import 'package:groceries/app/repositories_provider.dart';
import 'package:groceries/app/use_cases_provider.dart';
import 'package:groceries/data/models/app_flavor/app_flavor.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
