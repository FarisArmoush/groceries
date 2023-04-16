import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/constants/color_constants.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/app/presentation/widgets/primary_box.dart';
import 'package:groceries/gen/assets.gen.dart';

class AboutAppSettingsBox extends StatelessWidget {
  const AboutAppSettingsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final remoteConfigCubit = context.watch<RemoteConfigCubit>();
    return PrimaryBox(
      header: Text(
        'Groceries',
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
            title: 'About',
            icon: Assets.svg.icClipboard,
            iconsBoxColor: Colors.purple,
            onTap: () => context.pushNamed(AppNamedRoutes.about),
          ),
          SettingsListTile(
            title: "What's New",
            icon: Assets.svg.icPlus,
            iconsBoxColor: Colors.red,
            onTap: () => context.pushNamed(AppNamedRoutes.whatsNew),
          ),
          SettingsListTile(
            title: 'Privacy Policy',
            icon: Assets.svg.icFolderLock,
            iconsBoxColor: Colors.blue,
            onTap: () => context.pushNamed(AppNamedRoutes.privacyPolicy),
          ),
          SettingsListTile(
            title: 'Terms of use',
            icon: Assets.svg.icFile,
            iconsBoxColor: Colors.grey.shade600,
            onTap: () => context.pushNamed(AppNamedRoutes.termsOfUse),
          ),
          SettingsListTile(
            title: 'Send Feedback',
            icon: Assets.svg.icSend,
            iconsBoxColor: Colors.green,
            onTap: remoteConfigCubit.urlLauncherRepo.sendFeedbackToAppEmail,
          ),
          SettingsListTile(
            title: 'Website',
            icon: Assets.svg.icLink,
            iconsBoxColor: Colors.pink,
            onTap: remoteConfigCubit.urlLauncherRepo.launchAppWebsite,
          ),
          SettingsListTile(
            title: 'Follow us on Twitter',
            icon: Assets.svg.icTwitter,
            iconsBoxColor: ColorConstants.twitterBlue,
            onTap: remoteConfigCubit.urlLauncherRepo.launchAppTwitterAccount,
          ),
        ],
      ),
    );
  }
}
