part of '../verify_user.dart';

class VerifyUserView extends StatelessWidget {
  const VerifyUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyUserBloc(
        context.read<VerifyUserUseCase>(),
      ),
      child: const VerifyUserForm(),
    );
  }
}
