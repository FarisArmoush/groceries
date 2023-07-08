import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/presentation/modules/settings/widgets/user_data_box.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.settings),
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
          SettingsListTile(
            title: AppTranslations.accountSettings,
            subtitle: AppTranslations.accountSettingsDescription,
            iconPath: Assets.svg.icUser.path,
            onTap: () => context.pushNamed(AppNamedRoutes.accountSettings),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          SettingsListTile(
            title: AppTranslations.theme,
            subtitle: AppTranslations.themeHeader,
            iconPath: Assets.svg.icPalette.path,
            onTap: () => context.pushNamed(AppNamedRoutes.themeSettings),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          SettingsListTile(
            title: AppTranslations.additionalResources,
            subtitle: AppTranslations.additionalResourcesDescription,
            iconPath: Assets.svg.icVerticalThreeDots.path,
            onTap: () => context.pushNamed(AppNamedRoutes.additionalResources),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
        ],
      ),
    );
  }
}
