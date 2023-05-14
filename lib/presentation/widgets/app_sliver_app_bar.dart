import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/app_bar_title.dart';

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({
    required this.title,
    this.leading,
    this.actions,
    this.centerTitle,
    this.bottom,
    Key? key,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;
  final bool? centerTitle;
  final PreferredSizeWidget? bottom;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      title: AppBarTitle(title),
      leading: leading ?? const BackButton(),
      centerTitle: centerTitle,
      actions: actions,
      bottom: bottom,
    );
  }
}
