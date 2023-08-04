part of 'widgets.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    required this.text,
    required this.iconPath,
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  final String text;

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.transparent,
      title: Text(text),
      leading: SvgPicture.asset(
        iconPath,
        // ignore: deprecated_member_use
        color: context.theme.primaryColor,
      ),
    );
  }
}