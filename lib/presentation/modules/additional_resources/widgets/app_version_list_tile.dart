part of '../additional_resources.dart';

/// A [ListTile] widget that shows the app's current version.
class AppVersionListTile extends StatelessWidget {
  /// Creates an instance of [AppVersionListTile]
  const AppVersionListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final appVersion =
        context.read<RemoteConfigCubit>().remoteConfigRepository.appVersion;
    return FadeInAnimation(
      child: ListTile(
        title: Text(AppTranslations.appVersion),
        trailing: Text(appVersion),
      ),
    );
  }
}
