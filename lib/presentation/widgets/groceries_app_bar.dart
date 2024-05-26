import 'package:flutter/material.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/widgets/app_custom_cupertino_sliver_navigation_bar.dart';
import 'package:groceries_theme/app_theme.dart';

class GroceriesAppBar extends StatelessWidget {
  const GroceriesAppBar({
    required this.largeTitle,
    required this.middle,
    this.automaticallyImplyLeading = true,
    this.trailing,
    this.stretch = true,
    this.transitionBetweenRoutes = false,
    super.key,
  });

  final bool automaticallyImplyLeading;
  final Widget? trailing;
  final bool stretch;
  final bool transitionBetweenRoutes;
  final Widget largeTitle;
  final Widget middle;

  @override
  Widget build(BuildContext context) {
    return AppCustomCupertinoSliverNavigationBar(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      stretch: stretch,
      largeTitle: DefaultTextStyle.merge(
        style: TextStyle(
          fontWeight: AppFontWeights.regular,
          fontSize: 24,
          color: context.theme.primaryColor,
        ),
        child: largeTitle,
      ),
      middle: DefaultTextStyle.merge(
        style: context.theme.appBarTheme.titleTextStyle!.copyWith(
          fontSize: 18,
        ),
        child: middle,
      ),
      trailing: trailing,
      alwaysShowMiddle: false,
      automaticallyImplyLeading: automaticallyImplyLeading,
      transitionBetweenRoutes: transitionBetweenRoutes,
    );
  }
}
