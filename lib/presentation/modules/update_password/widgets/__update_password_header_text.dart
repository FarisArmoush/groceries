part of 'update_password_form.dart';

class _UpdatePasswordHeaderText extends StatelessWidget {
  const _UpdatePasswordHeaderText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Change Password',
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
