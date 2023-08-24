part of '../verify_user.dart';

class FailedToSendVerificationEmail extends StatelessWidget {
  const FailedToSendVerificationEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.illError.svg(
          height: context.deviceHeight * 0.3,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Text(
          AppTranslations.verifyAccount.failedToSendVerificationEmail,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    ).centered().symmetricPadding(
          vertical: 12,
          horizontal: 24,
        );
  }
}
