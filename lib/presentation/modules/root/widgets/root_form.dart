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
        asset: Assets.svg.icHome.path,
      ),
      _bnbItem(
        context,
        label: AppTranslations.recipes.recipes,
        asset: Assets.svg.icChefHat.path,
      ),
      _bnbItem(
        context,
        label: AppTranslations.settings.settings,
        asset: Assets.svg.icSettings.path,
      ),
    ];
  }

  AppBottomNavigationBarItem _bnbItem(
    BuildContext context, {
    required String label,
    required String asset,
  }) {
    return AppBottomNavigationBarItem(
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
