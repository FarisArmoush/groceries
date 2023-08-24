part of '../login.dart';

class LoginHeaderText extends StatelessWidget {
  const LoginHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 1200.milliseconds,
      child: Text(
        AppTranslations.login.loginHeader,
        style: TextStyle(
          fontFamily: AppFonts.semiBold(context),
          color: context.theme.primaryColorLight,
          fontSize: 32,
        ),
      ),
    );
  }
}
