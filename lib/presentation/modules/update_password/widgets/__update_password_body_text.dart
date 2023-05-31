part of 'update_password_form.dart';

class _UpdatePasswordBodyText extends StatelessWidget {
  const _UpdatePasswordBodyText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Choose your new Password',
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: Theme.of(context).primaryColor,
        fontSize: 22,
      ),
    );
  }
}
