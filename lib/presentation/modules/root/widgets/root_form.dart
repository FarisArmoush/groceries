part of '../root.dart';

class RootForm extends StatelessWidget {
  const RootForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootNavigationBloc, RootNavigationState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return Scaffold(
          body: _views[state.index],
          bottomNavigationBar: AppBottomNavigationBar(
            currentIndex: state.index,
            onTap: (index) => context.read<RootNavigationBloc>().add(
                  RootNavigationEvent.navigateToIndex(index),
                ),
            items: _bnb(context),
          ),
        );
      },
    );
  }

  static const _views = <Widget>[
    HomeView(),
    RecipesView(),
    SettingsView(),
  ];
  List<AppBottomNavigationBarItem> _bnb(BuildContext context) {
    return [
      _bnbItem(
        context,
        label: AppTranslations.home.home,
        iconPath: Assets.svg.icHouse.path,
        activeIconPath: Assets.svg.icHouseFilled.path,
      ),
      _bnbItem(
        context,
        label: AppTranslations.recipes.recipes,
        iconPath: Assets.svg.icCookingPot.path,
        activeIconPath: Assets.svg.icCookingPotFilled.path,
      ),
      _bnbItem(
        context,
        label: AppTranslations.settings.settings,
        iconPath: Assets.svg.icGear.path,
        activeIconPath: Assets.svg.icGearFilled.path,
      ),
    ];
  }

  AppBottomNavigationBarItem _bnbItem(
    BuildContext context, {
    required String label,
    required String iconPath,
    required String activeIconPath,
  }) {
    return AppBottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        // ignore: deprecated_member_use
        color: context.theme.hintColor,
        height: context.deviceHeight * 0.03,
      ),
      title: Text(label),
      activeIcon: SvgPicture.asset(
        activeIconPath,
        // ignore: deprecated_member_use
        color: context.theme.primaryColor,
        height: context.deviceHeight * 0.03,
      ),
      selectedColor: context.theme.primaryColor,
    );
  }
}
