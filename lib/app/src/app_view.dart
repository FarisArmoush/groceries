part of '../app.dart';

/// The main application view that sets up the app's theme,
/// localization, and routing.
/// also provides [ThemeCubit], and [RemoteConfigBloc], and they
/// are commonly used all around the app.
class AppView extends StatelessWidget {
  /// Creates an instance of [AppView]
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
          create: (context) => ThemeCubit(
            context.read<SharedPreferences>(),
          )..loadTheme(),
        ),
        BlocProvider(
          create: (context) => RemoteConfigBloc(
            context.read<RemoteConfigUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => UserDataCubit(
            context.read<FetchUserDataUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(
            context.read<LogoutUseCase>(),
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
