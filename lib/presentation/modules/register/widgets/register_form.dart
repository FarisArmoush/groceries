part of '../register.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<RegisterCubit, RegisterState>(
        listener: (context, state) {
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
        },
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
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
            const RegisterOtherOptionTextButton(),
          ],
        ),
      ),
    );
  }
}
