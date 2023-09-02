// ignore_for_file: deprecated_member_use
part of '../root.dart';

class RootForm extends StatefulWidget {
  const RootForm({super.key});

  @override
  State<RootForm> createState() => _RootFormState();
}

class _RootFormState extends State<RootForm> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[currentIndex],
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: _bnb(context),
      ),
    );
  }

  static const List<Widget> _views = [
    HomeView(),
    RecipesView(),
    SettingsView(),
  ];
  List<AppBottomNavigationBarItem> _bnb(BuildContext context) {
    return [
      _bnbItem(
        context,
        label: AppTranslations.home.home,
        icon: Assets.svg.icHouse.path,
        activeIcon: Assets.svg.icHouseFilled.path,
      ),
      _bnbItem(
        context,
        label: AppTranslations.recipes.recipes,
        icon: Assets.svg.icCookingPot.path,
        activeIcon: Assets.svg.icCookingPotFilled.path,
      ),
      _bnbItem(
        context,
        label: AppTranslations.settings.settings,
        icon: Assets.svg.icGear.path,
        activeIcon: Assets.svg.icGearFilled.path,
      ),
    ];
  }

  AppBottomNavigationBarItem _bnbItem(
    BuildContext context, {
    required String label,
    required String icon,
    required String activeIcon,
  }) {
    return AppBottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        color: context.theme.hintColor,
        height: context.deviceHeight * 0.03,
      ),
      title: Text(label),
      activeIcon: SvgPicture.asset(
        activeIcon,
        color: context.theme.primaryColor,
        height: context.deviceHeight * 0.03,
      ),
      selectedColor: context.theme.primaryColor,
    );
  }
}
