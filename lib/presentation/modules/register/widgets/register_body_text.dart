part of '../register.dart';

class RegisterBodyText extends StatelessWidget {
  const RegisterBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 1100.milliseconds,
      child: Text(
        AppTranslations.register.registerBody,
        style: TextStyle(
          fontFamily: AppFonts.regular(context),
          color: context.theme.primaryColor,
          fontSize: 22,
        ),
      ),
    );
  }
}
