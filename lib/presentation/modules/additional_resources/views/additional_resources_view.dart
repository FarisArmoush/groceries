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
        padding: AppPaddings.scaffoldPadding(context),
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
