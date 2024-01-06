part of 'widgets.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    required this.text,
    required this.iconPath,
    required this.onTap,
    this.color,
    super.key,
  });

  final VoidCallback onTap;

  final String text;

  final String iconPath;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: AppColors.transparent,
      title: Text(
        text,
        style: context.theme.listTileTheme.titleTextStyle!.copyWith(
          color: color,
        ),
      ),
      leading: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          color ?? context.theme.primaryColor,
          BlendMode.srcIn,
        ),
        height: context.deviceHeight * 0.03,
      ),
    );
  }
}
