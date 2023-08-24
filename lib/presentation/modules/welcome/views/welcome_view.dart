part of '../welcome.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: context.deviceWidth * 0.09,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.15,
            ),
            const WelcomeViewHeaderText(),
            SizedBox(
              height: context.deviceHeight * 0.065,
            ),
            const WelcomeViewBodyText(),
            SizedBox(
              height: context.deviceHeight * 0.09,
            ),
            _navigateToRegisterButton(context),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            _navigateToLoginButton(context),
          ],
        ),
      ),
    );
  }

  UpFadeInAnimation _navigateToLoginButton(BuildContext context) {
    return UpFadeInAnimation(
      duration: 1000.milliseconds,
      child: OutlinedButton(
        child: Text(AppTranslations.login.login),
        onPressed: () => context.pushReplacementNamed(AppNamedRoutes.login),
      ),
    );
  }

  UpFadeInAnimation _navigateToRegisterButton(BuildContext context) {
    return UpFadeInAnimation(
      child: FilledButton(
        child: Text(AppTranslations.register.register),
        onPressed: () => context.pushReplacementNamed(AppNamedRoutes.register),
      ),
    );
  }
}
