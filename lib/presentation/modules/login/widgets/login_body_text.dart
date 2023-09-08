part of '../login.dart';

class LoginBodyText extends StatelessWidget {
  const LoginBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.login.loginBody,
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
