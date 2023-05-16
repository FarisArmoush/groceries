part of 'login_form.dart';

class _LoginBodyText extends StatelessWidget {
  const _LoginBodyText();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.loginToYourAccount,
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: Theme.of(context).primaryColor,
        fontSize: 22,
      ),
    );
  }
}
