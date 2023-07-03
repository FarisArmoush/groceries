import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/routes/app_go_router.dart';
import 'package:groceries/config/theme/app_themes.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/presentation/blocs/theme/theme_cubit.dart';

/// {@template app_view}
/// The main application view that sets up the app's theme,
/// localization, and routing. also provides
/// [ThemeCubit], and [RemoteConfigCubit], and they are commonly
/// used all around the app.
/// {@endtemplate}
class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit()..load(),
        ),
        BlocProvider<RemoteConfigCubit>(
          create: (context) => RemoteConfigCubit(),
        ),
      ],
      // Used a builder to access the current theme.
      child: Builder(
        builder: (context) {
          final currentTheme = context.watch<ThemeCubit>().state;
          return MaterialApp.router(
            title: 'Groceries',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            routerConfig: AppGoRouter.routes,
            themeMode: currentTheme,
            theme: AppThemes.lightTheme(context),
            darkTheme: AppThemes.darkTheme(context),
          );
        },
      ),
    );
  }
}
