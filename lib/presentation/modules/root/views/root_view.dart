import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/modules/home/views/home_view.dart';
import 'package:groceries/presentation/modules/recipes/views/recipes_view.dart';
import 'package:groceries/presentation/modules/root/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/modules/root/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/modules/settings/views/settings_view.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

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
        ),
        BlocProvider<MyTasksBloc>(
          create: (context) => MyTasksBloc()..add(LoadMyTasks()),
        ),
      ],
      child: Scaffold(
        body: views[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          currentIndex: currentIndex,
          onTap: (int index) => setState(() => currentIndex = index),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: bnb(context),
        ),
      ),
    );
  }

  final List<Widget> views = [
    const HomeView(),
    const RecipesView(),
    const SettingsView(),
  ];
  List<BottomNavigationBarItem> bnb(BuildContext context) {
    return [
      bnbItem(
        context,
        label: 'Home',
        asset: Assets.svg.icHome.path,
      ),
      bnbItem(
        context,
        label: 'Recipes',
        asset: Assets.svg.icChefHat.path,
      ),
      bnbItem(
        context,
        label: 'Settings',
        asset: Assets.svg.icSettings.path,
      ),
    ];
  }

  BottomNavigationBarItem bnbItem(
    BuildContext context, {
    required String label,
    required String asset,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        asset,
        // ignore: deprecated_member_use
        color: Theme.of(context).hintColor,
      ),
      label: label,
      tooltip: label,
      activeIcon: SvgPicture.asset(
        asset,
        // ignore: deprecated_member_use
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
