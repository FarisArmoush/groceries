part of 'update_email_form.dart';

class _UpdateEmailHeaderText extends StatelessWidget {
  const _UpdateEmailHeaderText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Change Email',
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: Theme.of(context).primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
