part of '../account_settings.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInAnimation(
          child: Text(AppTranslations.accountSettings.accountSettings),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        physics: const BouncingScrollPhysics(),
        children: [
          const UserImage(),
          const EditUserImageButton(),
          SizedBox(height: context.deviceHeight * 0.02),
          const UserDisplayNameListTile(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const UserEmailListTile(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const IsUserVerifiedListTile(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const UserCreationMetaDataListTile(),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
          const LogoutButton(),
          SizedBox(
            height: context.deviceHeight * 0.05,
          ),
          const RequestToDeleteAccountButton(),
        ],
      ),
    );
  }
}
