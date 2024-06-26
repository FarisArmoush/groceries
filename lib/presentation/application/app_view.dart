import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/injection/injector.dart';
import 'package:groceries/presentation/models/flavor/flavor.dart';
import 'package:groceries/presentation/modules/theme_settings/cubit/theme_cubit.dart';
import 'package:groceries/presentation/router/app_go_router.dart';
import 'package:groceries_theme/app_theme.dart';

/// The main application view that sets up the app's theme,
/// localization, and routing.
class AppView extends StatelessWidget {
  /// Creates an instance of [AppView]
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTheme = context.watch<ThemeCubit>().state;
    final flavor = injector.get<Flavor>();
    final isDev = flavor.environment == FlavorEnvironment.development;
    return MaterialApp.router(
      title: 'Groceries',
      debugShowCheckedModeBanner: isDev,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: appGoRouter,
      themeMode: currentTheme,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
    );
  }
}
