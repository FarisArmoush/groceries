part of '../delete_account.dart';

class DeleteAccountHeaderText extends StatelessWidget {
  const DeleteAccountHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.deleteAccountHeader,
      style: TextStyle(
        fontFamily: AppFonts.bold(context),
        color: context.theme.primaryColorLight,
        fontSize: 28,
      ),
    );
  }
}
