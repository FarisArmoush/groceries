import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/routes/app_go_router.dart';
import 'package:groceries/config/theme/app_themes.dart';
import 'package:groceries/presentation/modules/theme_settings/cubit/theme_cubit.dart';

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
