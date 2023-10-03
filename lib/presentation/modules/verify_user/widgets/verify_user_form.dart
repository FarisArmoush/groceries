part of '../verify_user.dart';

class VerifyUserForm extends StatelessWidget {
  const VerifyUserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.verifyAccount.verifyAccount),
      ),
      body: BlocBuilder<VerifyUserBloc, VerifyUserState>(
        builder: (context, state) => state.status.when(
          initial: () => const VerifyUserInitialBody(),
          loading: () => const LoadingSendingVerificationEmail(),
          success: () => const VerificationEmailSentSuccessfully(),
          failure: (_) => const FailedToSendVerificationEmail(),
        ),
      ),
    );
  }
}
