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
        color: Theme.of(context).primaryColor,
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
    );
  }
}
