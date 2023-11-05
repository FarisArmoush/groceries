part of 'widgets.dart';

class GroceriesAppBar extends StatelessWidget {
  const GroceriesAppBar({
    required this.title,
    this.automaticallyImplyLeading = true,
    super.key,
  });

  final String title;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      largeTitle: Text(
        title,
      ),
      middle: Text(
        title,
        style: context.theme.appBarTheme.titleTextStyle,
      ),
      alwaysShowMiddle: false,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }
}
