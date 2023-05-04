import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/app/presentation/widgets/primary_box.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';
import 'package:groceries/app/utils/constants/color_constants.dart';
import 'package:groceries/gen/assets.gen.dart';

class AboutAppSettingsBox extends StatelessWidget {
  const AboutAppSettingsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final remoteConfigCubit = context.watch<RemoteConfigCubit>();
    return PrimaryBox(
      header: Text(
        AppTranslations.appName,
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
            title: AppTranslations.about,
            icon: Assets.svg.icClipboard,
            iconsBoxColor: Colors.purple,
            onTap: () => context.pushNamed(AppNamedRoutes.about),
          ),
          SettingsListTile(
            title: AppTranslations.whatsNew,
            icon: Assets.svg.icPlus,
            iconsBoxColor: Colors.red,
            onTap: () => context.pushNamed(AppNamedRoutes.whatsNew),
          ),
          SettingsListTile(
            title: AppTranslations.privacyPolicy,
            icon: Assets.svg.icFolderLock,
            iconsBoxColor: Colors.blue,
            onTap: () => context.pushNamed(AppNamedRoutes.privacyPolicy),
          ),
          SettingsListTile(
            title: AppTranslations.termsOfUse,
            icon: Assets.svg.icFile,
            iconsBoxColor: Colors.grey.shade600,
            onTap: () => context.pushNamed(AppNamedRoutes.termsOfUse),
          ),
          SettingsListTile(
            title: AppTranslations.sendFeedback,
            icon: Assets.svg.icSend,
            iconsBoxColor: Colors.green,
            onTap: remoteConfigCubit.urlLauncherRepo.sendFeedbackToAppEmail,
          ),
          SettingsListTile(
            title: AppTranslations.website,
            icon: Assets.svg.icLink,
            iconsBoxColor: Colors.pink,
            onTap: remoteConfigCubit.urlLauncherRepo.launchAppWebsite,
          ),
          SettingsListTile(
            title: AppTranslations.followsUsOnTwitter,
            icon: Assets.svg.icTwitter,
            iconsBoxColor: ColorConstants.twitterBlue,
            onTap: remoteConfigCubit.urlLauncherRepo.launchAppTwitterAccount,
          ),
        ],
      ),
    );
  }
}
