part of '../delete_account.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteAccountCubit, DeleteAccountState>(
      listener: (context, state) {
        if (state is DeleteAccountLoading) {
          showDialog<AppLoadingIndicator>(
            context: context,
            builder: (context) => const AppLoadingIndicator(),
          );
          developer.log('DeleteAccountLoading');
        }
        if (state is AccountDeleteSuccess) {
          context.pop();
          developer.log('AccountDeleteSuccess');
        }
        if (state is AccountDeleteFailed) {
          context.pop();
          developer.log('AccountDeleteFailed');
        }
      },
      child: SizedBox(
        width: context.deviceWidth,
        child: FilledButton(
          onPressed: () => context.read<DeleteAccountCubit>().deleteAccount(),
          child: Text(AppTranslations.yesDeleteAccount),
        ),
      ).symmetricPadding(
        vertical: 16,
        horizontal: 24,
      ),
    );
  }
}
