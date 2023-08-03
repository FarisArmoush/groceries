part of '../verify_user.dart';

class VerifyUserView extends StatelessWidget {
  const VerifyUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VerifyUserCubit>(
      create: (context) => VerifyUserCubit(
        context.read<AuthBloc>().authenticationRepository,
      ),
      child: const VerifyUserForm(),
    );
  }
}
