part of '../delete_account.dart';

class DeleteAccountBodyText extends StatelessWidget {
  const DeleteAccountBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.deleteAccount.deleteAccountBody,
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: context.theme.primaryColor,
        fontSize: 18,
      ),
    );
  }
}
