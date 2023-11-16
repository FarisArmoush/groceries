part of '../account_settings.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.accountSettings.accountSettings),
      ),
      body: ListView(
        padding: AppPaddings.scaffoldPadding(context),
        children: [
          const UserImage(),
          const EditUserImageButton(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
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
          FilledButton(
            onPressed: () async {
              unawaited(
                showDialog<AppLoadingIndicator>(
                  context: context,
                  builder: (context) => const AppLoadingIndicator(),
                ),
              );
              await Future.delayed(
                500.milliseconds,
                () => context
                  ..pop()
                  ..pushNamed(AppNamedRoutes.deleteAccount),
              );
            },
            child: Text(AppTranslations.deleteAccount.deleteAccount),
          ),
        ],
      ),
    );
  }
}
