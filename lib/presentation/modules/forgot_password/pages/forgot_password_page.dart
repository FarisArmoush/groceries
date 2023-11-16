part of '../forgot_password.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: _listener,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(),
          body: ListView(
            padding: AppPaddings.scaffoldPadding(context),
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

  void _listener(BuildContext context, ForgotPasswordState state) {
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
  }
}
