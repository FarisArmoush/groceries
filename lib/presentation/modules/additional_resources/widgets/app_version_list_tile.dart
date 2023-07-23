import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';

class AppVersionListTile extends StatelessWidget {
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
