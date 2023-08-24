part of '../verify_user.dart';

class LoadingSendingVerificationEmail extends StatelessWidget {
  const LoadingSendingVerificationEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppTranslations.verifyAccount.sendingVerificationEmailLoadingMessage,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.05,
        ),
        const AppLoadingIndicator(),
        SizedBox(
          height: context.deviceHeight * 0.025,
        ),
      ],
    ).centered().symmetricPadding(vertical: 12, horizontal: 24);
  }
}
