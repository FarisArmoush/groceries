part of '../delete_account.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteAccountBloc, DeleteAccountState>(
      listener: (context, state) {
        state.status.when(
          initial: () {},
          success: () => context.pop(),
          failure: (error) => context.pop(),
          loading: () {
            showDialog<AppLoadingIndicator>(
              context: context,
              builder: (context) => const AppLoadingIndicator(),
            );
            developer.log('DeleteAccountLoading');
          },
        );
      },
      child: SizedBox(
        width: context.deviceWidth,
        child: FilledButton(
          onPressed: () => context.read<DeleteAccountBloc>()
            ..add(
              const DeleteAccountEvent.deleteAccount(),
            ),
          child: Text(AppTranslations.deleteAccount.yesDeleteAccount),
        ),
      ).symmetricPadding(
        vertical: 16,
        horizontal: 24,
      ),
    );
  }
}
