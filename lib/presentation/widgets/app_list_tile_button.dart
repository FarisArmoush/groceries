import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class AppListTileButton extends StatelessWidget {
  const AppListTileButton({
    required this.onTap,
    required this.title,
    required this.icon,
    this.color,
    super.key,
  });

  final String title;
  final String icon;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      leading: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          color ?? context.theme.primaryColor,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        title,
        style: context.theme.listTileTheme.titleTextStyle?.copyWith(
          color: color ?? context.theme.primaryColor,
        ),
      ),
    );
  }
}
