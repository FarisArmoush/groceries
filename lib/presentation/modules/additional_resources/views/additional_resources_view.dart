import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/app_version_list_tile.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/legal_list_tile.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/send_crash_reports_switch_tile.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class AdditionalResourcesView extends StatelessWidget {
  const AdditionalResourcesView({super.key});

  @override
  Widget build(BuildContext context) {
    final urlLauncher = context.read<RemoteConfigCubit>().urlLauncherRepo;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.additionalResources),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        children: [
          const AppVersionListTile(),
          Divider(
            height: context.deviceHeight * 0.04,
          ),
          Text(
            AppTranslations.getHelp,
            style: TextStyle(
              fontFamily: AppFonts.medium(context),
              color: Theme.of(context).primaryColor,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const SendCrashReportsSwitchTile(),
          Divider(
            height: context.deviceHeight * 0.075,
          ),
          Text(
            AppTranslations.legal,
            style: TextStyle(
              fontFamily: AppFonts.medium(context),
              color: Theme.of(context).primaryColor,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          LegalListTile(
            title: AppTranslations.about,
            onTap: urlLauncher.launchAboutAppWebsite,
          ),
          LegalListTile(
            title: AppTranslations.termsOfUse,
            onTap: urlLauncher.launchTermsOfUseWebsite,
          ),
          LegalListTile(
            title: AppTranslations.privacyPolicy,
            onTap: urlLauncher.launchPrivacyPolicyWebsite,
          ),
        ],
      ),
    );
  }
}
