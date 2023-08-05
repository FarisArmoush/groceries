part of '../verify_user.dart';

class VerifyUserForm extends StatelessWidget {
  const VerifyUserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.verifyAccount),
      ),
      body: BlocBuilder<VerifyUserCubit, VerifyUserState>(
        builder: (context, state) {
          if (state is VerificationLoading) {
            return const LoadingSendingVerificationEmail();
          }
          if (state is VerifiedSuccessfully) {
            return const VerificationEmailSentSuccessfully();
          }
          if (state is VerificationFailed) {
            return const FailedToSendVerificationEmail();
          }
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
                  AppTranslations.sendVerificationEmail,
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
        },
      ),
    );
  }
}
