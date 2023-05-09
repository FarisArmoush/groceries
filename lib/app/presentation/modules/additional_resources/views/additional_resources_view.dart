import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/modules/additional_resources/widgets/app_version_list_tile.dart';
import 'package:groceries/app/presentation/modules/additional_resources/widgets/legal_list_tile.dart';
import 'package:groceries/app/presentation/modules/additional_resources/widgets/send_crash_reports_switch_tile.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

class AdditionalResourcesView extends StatelessWidget {
  const AdditionalResourcesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            height: size.height * 0.04,
          ),
          Text(
            AppTranslations.getHelp,
            style: AppTextStyles.poppinsMedium(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const SendCrashReportsSwitchTile(),
          Divider(
            height: size.height * 0.075,
          ),
          Text(
            AppTranslations.legal,
            style: AppTextStyles.poppinsMedium(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
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
