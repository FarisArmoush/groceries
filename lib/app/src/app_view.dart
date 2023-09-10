part of '../app.dart';

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
        BlocProvider(
          create: (context) => AuthenticationBloc(
            context.read<AuthenticationRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => ThemeCubit()..loadValue(),
        ),
        BlocProvider(
          create: (context) => RemoteConfigCubit(
            context.read<FetchAppVersionUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => UserDataCubit(
            context.read<FetchUserDataUseCase>(),
          ),
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
            routerConfig: appGoRouter,
            themeMode: currentTheme,
            theme: AppThemes.lightTheme(context),
            darkTheme: AppThemes.darkTheme(context),
          );
        },
      ),
    );
  }
}
