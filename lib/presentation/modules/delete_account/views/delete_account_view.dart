part of '../delete_account.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.deleteAccount.deleteAccount),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: AppPaddings.scaffoldPadding(context),
        children: [
          Assets.svg.illGaming.svg(
            height: context.deviceHeight * 0.4,
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const DeleteAccountHeaderText(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const DeleteAccountBodyText(),
        ],
      ),
      persistentFooterButtons: const [
        DeleteAccountButton(),
      ],
    );
  }
}
