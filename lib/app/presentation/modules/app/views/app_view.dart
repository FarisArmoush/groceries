import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/config/routes/app_go_router.dart';
import 'package:groceries/app/config/theme/app_themes.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/blocs/theme/theme_cubit.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<GroceryListsBloc>(
        //   create: (context) => GroceryListsBloc()..add(LoadGroceryLists()),
        // ),
        // BlocProvider<MyTasksBloc>(
        //   create: (context) => MyTasksBloc()..add(LoadMyTasks()),
        // ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit()..loadTheme(),
        ),
        BlocProvider<RemoteConfigCubit>(
          create: (context) => RemoteConfigCubit(),
        ),
      ],
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
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
          );
        },
      ),
    );
  }
}
