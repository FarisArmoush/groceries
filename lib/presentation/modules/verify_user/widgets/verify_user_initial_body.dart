part of '../verify_user.dart';

class VerifyUserInitialBody extends StatelessWidget {
  const VerifyUserInitialBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.illBirdWatching.svg(
            height: context.deviceHeight * 0.3,
          ),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
          Text(
            AppTranslations.verifyAccount.sendVerificationEmail,
            style: context.theme.dialogTheme.titleTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
          const SendVerificationEmailButton(),
        ],
      ),
    );
  }
}
