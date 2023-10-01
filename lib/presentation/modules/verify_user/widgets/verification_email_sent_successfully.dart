part of '../verify_user.dart';

class VerificationEmailSentSuccessfully extends StatelessWidget {
  const VerificationEmailSentSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.illCelebrating.svg(
          height: context.deviceHeight * 0.2,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Text(
          AppTranslations.verifyAccount.verificationEmailSentSuccessfullyHeader,
          textAlign: TextAlign.center,
          style: context.theme.dialogTheme.titleTextStyle,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.verifyAccount.verificationEmailSentSuccessfullyBody,
          textAlign: TextAlign.center,
          style: context.theme.dialogTheme.contentTextStyle,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        FilledButton(
          onPressed: () {
            context
              ..read<AuthenticationBloc>().add(
                const AuthenticationEvent.logout(),
              )
              ..pop();
          },
          child: Text(AppTranslations.accountSettings.logout),
        ),
      ],
    ).centered().symmetricPadding(vertical: 12, horizontal: 24);
  }
}
