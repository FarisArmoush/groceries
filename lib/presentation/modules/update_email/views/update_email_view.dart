part of '../update_email.dart';

class UpdateEmailView extends StatelessWidget {
  const UpdateEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateEmailBloc(
        context.read<UpdateEmailUseCase>(),
      ),
      child: const UpdateEmailForm(),
    );
  }
}
