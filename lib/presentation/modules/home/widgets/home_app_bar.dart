part of '../home.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      largeTitle: const HomeHeader(),
      middle: Text(
        AppTranslations.home.home,
        style: context.theme.appBarTheme.titleTextStyle,
      ),
      alwaysShowMiddle: false,
      automaticallyImplyLeading: false,
      backgroundColor: context.theme.scaffoldBackgroundColor,
    );
  }
}
