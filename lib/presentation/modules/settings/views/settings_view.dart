part of '../settings.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          GroceriesAppBar(
            largeTitle: Text(AppTranslations.settings.settings),
            middle: Text(AppTranslations.settings.settings),
            automaticallyImplyLeading: false,
          ),
          SliverSizedBox(height: context.deviceHeight * 0.015),
          SliverList.list(
            children: [
              const UserDataBox(),
              Divider(
                height: context.deviceHeight * 0.05,
              ),
              SettingsListTile(
                title: AppTranslations.accountSettings.accountSettings,
                subtitle:
                    AppTranslations.accountSettings.accountSettingsDescription,
                iconPath: Assets.svg.icUser.path,
                onTap: () => context.pushNamed(AppNamedRoutes.accountSettings),
              ),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              SettingsListTile(
                title: AppTranslations.theme.theme,
                subtitle: AppTranslations.theme.themeHeader,
                iconPath: Assets.svg.icSunMoon.path,
                onTap: () => context.pushNamed(AppNamedRoutes.themeSettings),
              ),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              SettingsListTile(
                title: AppTranslations.additionalResources.additionalResources,
                subtitle: AppTranslations
                    .additionalResources.additionalResourcesDescription,
                iconPath: Assets.svg.icVerticalThreeDots.path,
                onTap: () =>
                    context.pushNamed(AppNamedRoutes.additionalResources),
              ),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
