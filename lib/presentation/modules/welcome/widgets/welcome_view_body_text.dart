part of '../welcome.dart';

class WelcomeViewBodyText extends StatelessWidget {
  const WelcomeViewBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      child: Text(
        AppTranslations.welcomeBody,
        style: TextStyle(
          fontFamily: AppFonts.regular(context),
          color: context.theme.primaryColor.withOpacity(0.9),
          fontSize: 20,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
