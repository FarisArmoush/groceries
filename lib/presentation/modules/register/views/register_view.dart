part of '../register.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        context.read<RegisterWithEmailAndPasswordUseCase>(),
      ),
      child: const RegisterForm(),
    );
  }
}
