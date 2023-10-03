part of '../delete_account.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeleteAccountBloc(
        context.read<DeleteAccountUseCase>(),
      ),
      child: const DeleteAccountForm(),
    );
  }
}
