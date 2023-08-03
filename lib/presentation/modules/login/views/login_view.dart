part of '../login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(
        context.read<AuthBloc>().authenticationRepository,
      ),
      child: const LoginForm(),
    );
  }
}
