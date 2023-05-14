import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class AppVersionListTile extends StatelessWidget {
  const AppVersionListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final appVersion =
        context.read<RemoteConfigCubit>().remoteConfigRepository.appVersion;
    return ListTile(
      title: Text(
        AppTranslations.version,
        style: AppTextStyles.poppinsMedium(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
      ),
      trailing: Text(
        appVersion,
        style: AppTextStyles.poppinsRegular(
          color: Theme.of(context).primaryColor,
          fontSize: 12,
        ),
      ),
    );
  }
}