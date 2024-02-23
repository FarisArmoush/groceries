import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_bloc.dart';
import 'package:groceries/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/presentation/modules/settings/widgets/user_data_box.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/presentation/widgets/sliver_sized_box.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  void initState() {
    context.read<RemoteConfigBloc>().add(
          const RemoteConfigEvent.getShowAdditionalResources(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final showAdditionalResources =
        context.read<RemoteConfigBloc>().state.showAdditionalResources;
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
                onTap: () => context.pushNamed(AppRoute.accountSettings.name),
              ),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              SettingsListTile(
                title: AppTranslations.theme.theme,
                subtitle: AppTranslations.theme.themeHeader,
                iconPath: Assets.icons.sunMoon.path,
                onTap: () => context.pushNamed(AppRoute.themeSettings.name),
              ),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              if (showAdditionalResources) ...[
                Visibility(
                  visible: showAdditionalResources,
                  child: SettingsListTile(
                    title:
                        AppTranslations.additionalResources.additionalResources,
                    subtitle: AppTranslations
                        .additionalResources.additionalResourcesDescription,
                    iconPath: Assets.icons.menu.path,
                    onTap: () =>
                        context.pushNamed(AppRoute.additionalResources.name),
                  ),
                ),
                SizedBox(
                  height: context.deviceHeight * 0.01,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
