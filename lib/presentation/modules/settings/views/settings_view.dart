import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/presentation/modules/settings/widgets/user_data_box.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/presentation/widgets/sliver_sized_box.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

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
                iconPath: Assets.icons.user.path,
                onTap: () => context.pushNamed(AppNamedRoutes.accountSettings),
              ),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              SettingsListTile(
                title: AppTranslations.theme.theme,
                subtitle: AppTranslations.theme.themeHeader,
                iconPath: Assets.icons.sunMoon.path,
                onTap: () => context.pushNamed(AppNamedRoutes.themeSettings),
              ),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              SettingsListTile(
                title: AppTranslations.additionalResources.additionalResources,
                subtitle: AppTranslations
                    .additionalResources.additionalResourcesDescription,
                iconPath: Assets.icons.menu.path,
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
