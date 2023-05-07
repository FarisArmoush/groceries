import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/app/presentation/widgets/primary_box.dart';
import 'package:groceries/app/utils/constants/app_colors.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';
import 'package:groceries/gen/assets.gen.dart';

class GeneralSettingsBox extends StatelessWidget {
  const GeneralSettingsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryBox(
      header: Text(
        'General',
        style: AppTextStyles.poppinsMedium(
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
      ),
      child: ListView(
        shrinkWrap: true,
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SettingsListTile(
            title: AppTranslations.theme,
            icon: Assets.svg.icPalette,
            iconsBoxColor: Colors.black,
            onTap: () => context.pushNamed(AppNamedRoutes.appearanceSettings),
          ),
          SettingsListTile(
            title: AppTranslations.notifications,
            icon: Assets.svg.icBell,
            iconsBoxColor: AppColors.lightRed,
            onTap: () =>
                context.pushNamed(AppNamedRoutes.notificationsSettings),
          ),
        ],
      ),
    );
  }
}
