import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
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
            largeTitle: Text(Translations.settings.settings),
            middle: Text(Translations.settings.settings),
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
                title: Translations.accountSettings.title,
                subtitle: Translations.accountSettings.description,
                iconPath: Assets.icons.user.path,
                onTap: () => context.pushNamed(AppRoute.accountSettings.named),
              ),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              SettingsListTile(
                title: Translations.theme.theme,
                subtitle: Translations.theme.header,
                iconPath: Assets.icons.sunMoon.path,
                onTap: () => context.pushNamed(AppRoute.themeSettings.named),
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
