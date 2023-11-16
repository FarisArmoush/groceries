part of '../register.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: _listener,
        child: ListView(
          padding: AppPaddings.scaffoldPadding(context),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.09,
            ),
            const RegisterHeaderText(),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            const RegisterBodyText(),
            SizedBox(
              height: context.deviceHeight * 0.04,
            ),
            const RegisterDisplayNameTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const RegisterEmailTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const RegisterPasswordTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const RegisterConfirmPasswordTextField(),
            SizedBox(
              height: context.deviceHeight * 0.04,
            ),
            const RegisterButton(),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            SwitchAuthenticationOptionTextButton(
              upperText: AppTranslations.register.alreadyHaveAnAccount,
              lowerText: AppTranslations.register.loginNow,
              onTap: () => context.pushNamed(AppNamedRoutes.login),
            ),
          ],
        ),
      ),
    );
  }

  void _listener(BuildContext context, RegisterState state) {
    if (state.status.isFailure) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.error(
            error: state.errorMessage ?? 'Authentication Failure',
          ),
        );
    }

    if (state.status.isSuccess) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.success(
            message: 'Account Created Successfully',
          ),
        );
      context.pushReplacementNamed(AppNamedRoutes.root);
    }
  }
}
