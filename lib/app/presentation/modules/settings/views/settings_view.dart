import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/gen/assets.gen.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.settings),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          SettingsListTile(
            title: AppTranslations.accountSettings,
            subtitle: AppTranslations.accountSettingsDescription,
            icon: Assets.svg.icUser,
            onTap: () => context.pushNamed(AppNamedRoutes.accountSettings),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SettingsListTile(
            title: AppTranslations.notifications,
            subtitle: AppTranslations.notificationSettingsDescription,
            icon: Assets.svg.icBell,
            onTap: () =>
                context.pushNamed(AppNamedRoutes.notificationsSettings),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SettingsListTile(
            title: AppTranslations.theme,
            subtitle: AppTranslations.themeHeader,
            icon: Assets.svg.icPalette,
            onTap: () => context.pushNamed(AppNamedRoutes.appearanceSettings),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SettingsListTile(
            title: AppTranslations.additionalResources,
            subtitle: AppTranslations.additionalResourcesDescription,
            icon: Assets.svg.icVerticalThreeDots,
            onTap: () => context.pushNamed(AppNamedRoutes.additionalResources),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
        ],
      ),
    );
  }
}
