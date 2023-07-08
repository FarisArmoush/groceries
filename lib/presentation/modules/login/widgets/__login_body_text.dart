part of 'login_form.dart';

class _LoginBodyText extends StatelessWidget {
  const _LoginBodyText();

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.loginBody,
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
