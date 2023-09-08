part of '../verify_user.dart';

class VerifyUserForm extends StatelessWidget {
  const VerifyUserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.verifyAccount.verifyAccount),
      ),
      body: BlocBuilder<VerifyUserCubit, VerifyUserState>(
        builder: (context, state) => switch (state) {
          VerifyUserInitial() => const VerifyUserInitialBody(),
          VerificationLoading() => const LoadingSendingVerificationEmail(),
          VerifiedSuccessfully() => const VerificationEmailSentSuccessfully(),
          VerificationFailed() => const FailedToSendVerificationEmail(),
        },
      ),
    );
  }
}
