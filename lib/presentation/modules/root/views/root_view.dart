// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/modules/home/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/modules/home/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/modules/home/views/home_view.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/modules/recipes/views/recipes_view.dart';
import 'package:groceries/presentation/modules/settings/views/settings_view.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GroceryListsBloc>(
          create: (context) => GroceryListsBloc()..add(LoadGroceryLists()),
          child: const HomeView(),
        ),
        BlocProvider<MyTasksBloc>(
          create: (context) => MyTasksBloc()..add(LoadMyTasks()),
          child: const HomeView(),
        ),
        BlocProvider<RecipesBloc>(
          create: (context) => RecipesBloc()..add(LoadRecipes()),
          child: const RecipesView(),
        ),
      ],
      child: Scaffold(
        body: _views[currentIndex],
        bottomNavigationBar: SalomonBottomBar(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          currentIndex: currentIndex,
          onTap: (int index) => setState(() => currentIndex = index),
          items: _bnb(context),
        ),
      ),
    );
  }

  static const List<Widget> _views = [
    HomeView(),
    RecipesView(),
    SettingsView(),
  ];
  List<SalomonBottomBarItem> _bnb(BuildContext context) {
    return [
      _bnbItem(
        context,
        label: 'Home',
        asset: Assets.svg.icHome.path,
      ),
      _bnbItem(
        context,
        label: 'Recipes',
        asset: Assets.svg.icChefHat.path,
      ),
      _bnbItem(
        context,
        label: 'Settings',
        asset: Assets.svg.icSettings.path,
      ),
    ];
  }

  SalomonBottomBarItem _bnbItem(
    BuildContext context, {
    required String label,
    required String asset,
  }) {
    return SalomonBottomBarItem(
      icon: SvgPicture.asset(
        asset,
        color: context.theme.hintColor,
      ),
      title: Text(label),
      activeIcon: SvgPicture.asset(
        asset,
        color: context.theme.primaryColor,
      ),
      selectedColor: context.theme.primaryColor,
    );
  }
}
