part of '../additional_resources.dart';

class AdditionalResourcesView extends StatelessWidget {
  const AdditionalResourcesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.additionalResources.additionalResources),
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
          AdditionalResourcesTitle(
            AppTranslations.additionalResources.helpImproveApp,
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const SendCrashReportsSwitchTile(),
          Divider(
            height: context.deviceHeight * 0.075,
          ),
          LegalListTile(
            title: AppTranslations.additionalResources.credits,
            onTap: () => context.pushNamed(AppNamedRoutes.credits),
          ),
        ],
      ),
    );
  }
}
