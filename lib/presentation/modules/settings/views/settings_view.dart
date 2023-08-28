part of '../settings.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInAnimation(
          child: Text(AppTranslations.settings.settings),
        ),
        leading: const SizedBox.shrink(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        children: [
          const UserDataBox(),
          Divider(
            height: context.deviceHeight * 0.05,
          ),
          LeftFadeInAnimation(
            duration: 700.milliseconds,
            child: SettingsListTile(
              title: AppTranslations.accountSettings.accountSettings,
              subtitle:
                  AppTranslations.accountSettings.accountSettingsDescription,
              iconPath: Assets.svg.icUser.path,
              onTap: () => context.pushNamed(AppNamedRoutes.accountSettings),
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          LeftFadeInAnimation(
            duration: 600.milliseconds,
            child: SettingsListTile(
              title: AppTranslations.theme.theme,
              subtitle: AppTranslations.theme.themeHeader,
              iconPath: Assets.svg.icSunMoon.path,
              onTap: () => context.pushNamed(AppNamedRoutes.themeSettings),
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          LeftFadeInAnimation(
            duration: 500.milliseconds,
            child: SettingsListTile(
              title: AppTranslations.additionalResources.additionalResources,
              subtitle: AppTranslations
                  .additionalResources.additionalResourcesDescription,
              iconPath: Assets.svg.icVerticalThreeDots.path,
              onTap: () =>
                  context.pushNamed(AppNamedRoutes.additionalResources),
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
        ],
      ),
    );
  }
}
