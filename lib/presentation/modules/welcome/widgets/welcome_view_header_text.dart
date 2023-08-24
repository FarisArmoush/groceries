part of '../welcome.dart';

class WelcomeViewHeaderText extends StatelessWidget {
  const WelcomeViewHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 1000.milliseconds,
      child: Text(
        AppTranslations.welcome.welcomeHeader,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: AppFonts.bold(context),
          color: context.theme.primaryColor,
          fontSize: 30,
        ),
      ),
    );
  }
}
