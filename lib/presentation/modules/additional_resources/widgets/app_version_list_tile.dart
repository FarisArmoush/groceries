import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_bloc.dart';

/// A [ListTile] widget that shows the app's current version.
class AppVersionListTile extends StatefulWidget {
  /// Creates an instance of [AppVersionListTile]
  const AppVersionListTile({super.key});

  @override
  State<AppVersionListTile> createState() => _AppVersionListTileState();
}

class _AppVersionListTileState extends State<AppVersionListTile> {
  @override
  void initState() {
    context.read<RemoteConfigBloc>().add(
          const RemoteConfigEvent.getAppVersion(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appVersion = context.watch<RemoteConfigBloc>().state.appVersion;
    return ListTile(
      title: Text(Translations.additionalResources.appVersion),
      trailing: Text(appVersion),
    );
  }
}
