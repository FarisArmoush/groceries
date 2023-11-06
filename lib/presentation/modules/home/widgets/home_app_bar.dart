part of '../home.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GroceriesAppBar(
      largeTitle: const HomeHeader(),
      middle: Text(
        AppTranslations.home.home,
        style: context.theme.appBarTheme.titleTextStyle,
      ),
      automaticallyImplyLeading: false,
    );
  }
}
