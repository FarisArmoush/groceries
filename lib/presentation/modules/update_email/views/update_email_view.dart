part of '../update_email.dart';

class UpdateEmailView extends StatelessWidget {
  const UpdateEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateEmailCubit>(
      create: (context) => UpdateEmailCubit(
        context.read<AuthenticationBloc>().authenticationRepository,
      ),
      child: const UpdateEmailForm(),
    );
  }
}
