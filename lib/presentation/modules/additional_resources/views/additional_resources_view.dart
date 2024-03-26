import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/additional_resources_title.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/app_version_list_tile.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/send_crash_reports_switch_tile.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class AdditionalResourcesView extends StatelessWidget {
  const AdditionalResourcesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.additionalResources.title),
      ),
      body: ListView(
        padding: AppPaddings.scaffold(context),
        children: [
          const AppVersionListTile(),
          Divider(
            height: context.deviceHeight * 0.04,
          ),
          AdditionalResourcesTitle(
            AppTranslations.additionalResources.helpImproveApp,
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const SendCrashReportsSwitchTile(),
        ],
      ),
    );
  }
}
