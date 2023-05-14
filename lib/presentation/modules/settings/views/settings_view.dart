import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/presentation/modules/settings/widgets/user_data_box.dart';
import 'package:groceries/presentation/widgets/app_bar_title.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().authRepo.currentUser;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(AppTranslations.settings),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        children: [
          UserDataBox(
            imageUrl: user?.photoURL,
            displayName: user?.displayName,
            email: user?.email,
          ),
          Divider(
            height: size.height * 0.05,
          ),
          SettingsListTile(
            title: AppTranslations.accountSettings,
            subtitle: AppTranslations.accountSettingsDescription,
            icon: Assets.svg.icUser.path,
            onTap: () => context.pushNamed(AppNamedRoutes.accountSettings),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SettingsListTile(
            title: AppTranslations.notifications,
            subtitle: AppTranslations.notificationSettingsDescription,
            icon: Assets.svg.icBell.path,
            onTap: () =>
                context.pushNamed(AppNamedRoutes.notificationsSettings),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SettingsListTile(
            title: AppTranslations.theme,
            subtitle: AppTranslations.themeHeader,
            icon: Assets.svg.icPalette.path,
            onTap: () => context.pushNamed(AppNamedRoutes.appearanceSettings),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SettingsListTile(
            title: AppTranslations.additionalResources,
            subtitle: AppTranslations.additionalResourcesDescription,
            icon: Assets.svg.icVerticalThreeDots.path,
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
