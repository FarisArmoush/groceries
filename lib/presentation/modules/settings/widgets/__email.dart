part of 'user_data_box.dart';

class _Email extends StatelessWidget {
  const _Email({
    required this.email,
  });
  final String? email;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      email ?? '',
      style: TextStyle(
        fontFamily: AppFonts.light(context),
        color: context.theme.hintColor,
        fontSize: 12,
      ),
      textAlign: TextAlign.center,
    );
  }
}
