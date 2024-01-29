import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/app_custom_cupertino_sliver_navigation_bar.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

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
          fontFamily: AppFonts.regular(context),
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
