part of '../additional_resources.dart';

/// A [ListTile] widget that shows the app's current version.
class AppVersionListTile extends StatelessWidget {
  /// Creates an instance of [AppVersionListTile]
  const AppVersionListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final appVersion = context.watch<RemoteConfigCubit>().appVersion;
    return ListTile(
      title: Text(AppTranslations.additionalResources.appVersion),
      trailing: Text(appVersion),
    );
  }
}
