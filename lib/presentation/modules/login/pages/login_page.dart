part of '../login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: listener,
        child: ListView(
          padding: AppPaddings.scaffoldPadding(context),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.09,
            ),
            const LoginHeaderText(),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            const LoginBodyText(),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            const LoginEmailTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const LoginPasswordTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const LoginForgotPasswordButton(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const LoginButton(),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            const LoginOtherOptionsTextButton(),
          ],
        ),
      ),
    );
  }

  void listener(BuildContext context, LoginState state) {
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
            message: 'Welcome Back',
          ),
        );
      context.pushReplacementNamed(AppNamedRoutes.root);
    }
  }
}
