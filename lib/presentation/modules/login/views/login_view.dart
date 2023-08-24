part of '../login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(
        context.read<LoginWithEmailAndPasswordUseCase>(),
      ),
      child: const LoginForm(),
    );
  }
}
