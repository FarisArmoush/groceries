part of '../settings.dart';

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
      tileColor: AppColors.transparent,
      leading: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          context.theme.hintColor,
          BlendMode.srcIn,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      isThreeLine: true,
      trailing: const NextArrowIcon(),
      titleAlignment: ListTileTitleAlignment.center,
    );
  }
}
