part of 'update_email_form.dart';

class _UpdateEmailBodyText extends StatelessWidget {
  const _UpdateEmailBodyText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Choose your new Email',
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: Theme.of(context).primaryColor,
        fontSize: 22,
      ),
    );
  }
}
