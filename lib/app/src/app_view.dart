part of '../app.dart';

/// The main application view that sets up the app's theme,
/// localization, and routing.
class AppView extends StatelessWidget {
  /// Creates an instance of [AppView]
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
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
    );
  }
}
