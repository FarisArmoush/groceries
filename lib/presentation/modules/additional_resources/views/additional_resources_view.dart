import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/additional_resources_title.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/app_version_list_tile.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/legal_list_tile.dart';
import 'package:groceries/presentation/modules/additional_resources/widgets/send_crash_reports_switch_tile.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class AdditionalResourcesView extends StatelessWidget {
  const AdditionalResourcesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInAnimation(
          child: Text(AppTranslations.additionalResources),
        ),
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
          AdditionalResourcesTitle(AppTranslations.helpImproveApp),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const SendCrashReportsSwitchTile(),
          Divider(
            height: context.deviceHeight * 0.075,
          ),
          LegalListTile(
            title: AppTranslations.credits,
            onTap: () => context.pushNamed(AppNamedRoutes.credits),
          ),
        ],
      ),
    );
  }
}
