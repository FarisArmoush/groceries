import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.onTap,
    super.key,
  });

  final String iconPath;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.transparent,
      leading: SvgPicture.asset(
        iconPath,
        // ignore: deprecated_member_use
        color: context.theme.hintColor,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      isThreeLine: true,
      trailing: const NextArrowIcon(),
      titleAlignment: ListTileTitleAlignment.center,
    );
  }
}
