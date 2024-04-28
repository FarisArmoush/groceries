import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/data/models/app_bottom_navigation_bar_item/app_bottom_navigation_bar_item.dart';
import 'package:groceries/presentation/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/blocs/priorities/priorities_bloc.dart';
import 'package:groceries/presentation/modules/home/views/home_view.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/modules/recipes/views/recipes_view.dart';
import 'package:groceries/presentation/modules/root/bloc/root_navigation_bloc.dart';
import 'package:groceries/presentation/modules/settings/views/settings_view.dart';
import 'package:groceries/presentation/widgets/app_bottom_navigation_bar.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  static const _views = <Widget>[
    HomeView(),
    RecipesView(),
    SettingsView(),
  ];

  @override
  void initState() {
    context.read<GroceryListsBloc>().add(
          const GroceryListsEvent.getGroceryLists(),
        );
    context.read<MyTasksBloc>().add(
          const MyTasksEvent.getMyTasks(),
        );
    context.read<RecipesBloc>().add(const RecipesEvent.loadMyRecipes());

    context.read<PrioritiesBloc>().add(
          const PrioritiesEvent.getPriorities(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootNavigationBloc, RootNavigationState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return Scaffold(
          body: _views[state.index],
          bottomNavigationBar: AppBottomNavigationBar(
            currentIndex: state.index,
            onTap: (index) {
              if (index == state.index) return;
              context.read<RootNavigationBloc>().add(
                    RootNavigationEvent.navigateToIndex(index),
                  );
            },
            items: _bnb(context),
          ),
        );
      },
    );
  }

  List<AppBottomNavigationBarItem> _bnb(BuildContext context) {
    return [
      _bnbItem(
        context,
        label: Translations.home.home,
        iconPath: Assets.icons.house.path,
        activeIconPath: Assets.icons.houseFilled.path,
      ),
      _bnbItem(
        context,
        label: Translations.recipes.recipes,
        iconPath: Assets.icons.cookingPot.path,
        activeIconPath: Assets.icons.cookingPotFilled.path,
      ),
      _bnbItem(
        context,
        label: Translations.settings.settings,
        iconPath: Assets.icons.gear.path,
        activeIconPath: Assets.icons.gearFilled.path,
      ),
    ];
  }

  AppBottomNavigationBarItem _bnbItem(
    BuildContext context, {
    required String label,
    required String iconPath,
    required String activeIconPath,
  }) {
    final height = context.deviceHeight * 0.03;
    final activeColor = context.isDarkMode
        ? context.theme.primaryColorLight
        : context.theme.primaryColorDark;
    return AppBottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        height: height,
        colorFilter: ColorFilter.mode(
          context.theme.hintColor,
          BlendMode.srcIn,
        ),
      ),
      title: Text(label),
      activeIcon: SvgPicture.asset(
        activeIconPath,
        height: height,
        colorFilter: ColorFilter.mode(
          activeColor,
          BlendMode.srcIn,
        ),
      ),
      selectedColor: activeColor,
    );
  }
}
