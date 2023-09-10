part of '../login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        context.read<LoginWithEmailAndPasswordUseCase>(),
      ),
      child: const LoginForm(),
    );
  }
}
