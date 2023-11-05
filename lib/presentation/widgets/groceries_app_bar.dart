part of 'widgets.dart';

class GroceriesAppBar extends StatelessWidget {
  const GroceriesAppBar({
    required this.title,
    this.automaticallyImplyLeading = true,
    this.trailing,
    this.stretch = true,
    this.transitionBetweenRoutes = false,
    super.key,
  });

  final String title;
  final bool automaticallyImplyLeading;
  final Widget? trailing;
  final bool stretch;
  final bool transitionBetweenRoutes;

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      stretch: stretch,
      largeTitle: Text(
        title,
        style: TextStyle(
          fontFamily: AppFonts.regular(context),
          fontSize: 24,
          color: context.theme.primaryColor,
        ),
      ),
      middle: Text(
        title,
        style: context.theme.appBarTheme.titleTextStyle!.copyWith(
          fontSize: 18,
        ),
      ),
      trailing: trailing,
      alwaysShowMiddle: false,
      automaticallyImplyLeading: automaticallyImplyLeading,
      transitionBetweenRoutes: transitionBetweenRoutes,
    );
  }
}
