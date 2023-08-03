part of '../register.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) => RegisterCubit(
        context.read<AuthBloc>().authenticationRepository,
      ),
      child: const RegisterForm(),
    );
  }
}
