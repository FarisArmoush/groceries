import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({
    required this.title,
    this.leading,
    this.actions,
    this.centerTitle,
    this.bottom,
    super.key,
  });

  final String title;
  final List<Widget>? actions;
  final bool? centerTitle;
  final PreferredSizeWidget? bottom;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: AppFonts.medium(context),
          color: Theme.of(context).primaryColor,
          fontSize: 20,
        ),
      ),
      leading: leading ?? const BackButton(),
      centerTitle: centerTitle,
      actions: actions,
      bottom: bottom,
    );
  }
}
