import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
    super.key,
  });

  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.transparent,
      leading: SvgPicture.asset(
        icon,
        color: Theme.of(context).hintColor,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const NextArrowIcon(),
      titleAlignment: ListTileTitleAlignment.center,
      isThreeLine: true,
    );
  }
}
