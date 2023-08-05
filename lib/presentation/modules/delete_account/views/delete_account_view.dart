part of '../delete_account.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DeleteAccountCubit>(
      create: (context) => DeleteAccountCubit(
        authRepo: context.read<AuthenticationBloc>().authenticationRepository,
      ),
      child: const DeleteAccountForm(),
    );
  }
}
