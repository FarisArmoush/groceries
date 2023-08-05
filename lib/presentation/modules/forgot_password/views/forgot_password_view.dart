part of '../forgot_password.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordCubit>(
      create: (context) => ForgotPasswordCubit(
        context.read<AuthenticationBloc>().authenticationRepository,
      ),
      child: const ForgotPasswordForm(),
    );
  }
}
