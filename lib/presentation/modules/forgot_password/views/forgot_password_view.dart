part of '../forgot_password.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordBloc(
        context.read<SendPasswordResetEmailUseCase>(),
      ),
      child: const ForgotPasswordForm(),
    );
  }
}
