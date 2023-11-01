part of '../delete_account.dart';

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.deleteAccount.deleteAccount),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
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
      bottomSheet: const DeleteAccountButton(),
    );
  }
}
