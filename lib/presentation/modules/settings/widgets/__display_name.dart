part of 'user_data_box.dart';

class _DisplayName extends StatelessWidget {
  const _DisplayName({
    required this.name,
  });
  final String? name;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      name ?? '',
      style: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: context.theme.primaryColor,
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
    );
  }
}
