part of 'widgets.dart';

class GroceriesAppBar extends StatelessWidget {
  const GroceriesAppBar({
    required this.title,
    this.automaticallyImplyLeading = true,
    this.trailing,
    super.key,
  });

  final String title;
  final bool automaticallyImplyLeading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      stretch: true,
      largeTitle: Text(
        title,
        style: TextStyle(
          fontFamily: AppFonts.regular(context),
          fontSize: 28,
          color: context.theme.primaryColor,
        ),
      ),
      middle: Text(
        title,
        style: context.theme.appBarTheme.titleTextStyle,
      ),
      trailing: trailing,
      alwaysShowMiddle: false,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }
}
