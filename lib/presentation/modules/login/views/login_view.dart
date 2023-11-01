part of '../login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        context.read<LoginWithEmailAndPasswordUseCase>(),
      ),
      child: const LoginPage(),
    );
  }
}
