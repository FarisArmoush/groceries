part of '../forgot_password.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          context.pushReplacementNamed(
            AppNamedRoutes.resetPasswordSentSuccessfully,
          );
        }
        if (state.status.isFailure) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            AppSnackBars.error(
              error: state.errorMessage ?? 'Failed to send',
            ),
          );
        }
        if (state.status.isInProgress) {
          showDialog<AppLoadingIndicator>(
            context: context,
            builder: (context) => const AppLoadingIndicator(),
            barrierDismissible: false,
          );
        }
      },
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: _appBar(context),
          body: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: context.deviceWidth * 0.02,
              ),
              const ForgotPasswordHeaderText(),
              SizedBox(
                height: context.deviceHeight * 0.02,
              ),
              const ForgotPasswordBodyText(),
              SizedBox(
                height: context.deviceHeight * 0.06,
              ),
              const ForgotPasswordEmailTextField(),
            ],
          ),
          bottomSheet: const SendForgotPasswordEmailButton(),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: BackButton(
        onPressed: () => showDialog<CancelForgotPasswordDialog>(
          context: context,
          builder: (context) => const CancelForgotPasswordDialog(),
        ),
      ),
    );
  }
}
