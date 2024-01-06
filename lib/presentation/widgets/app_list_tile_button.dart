part of 'widgets.dart';

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
  final VoidCallback? onTap;

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
