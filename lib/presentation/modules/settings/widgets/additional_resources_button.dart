import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_bloc.dart';
import 'package:groceries/presentation/modules/settings/widgets/settings_list_tile.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class AdditionalResourcesButton extends StatefulWidget {
  const AdditionalResourcesButton({super.key});

  @override
  State<AdditionalResourcesButton> createState() =>
      _AdditionalResourcesButtonState();
}

class _AdditionalResourcesButtonState extends State<AdditionalResourcesButton> {
  @override
  void initState() {
    context.read<RemoteConfigBloc>().add(
          const RemoteConfigEvent.getShowAdditionalResources(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RemoteConfigBloc, RemoteConfigState>(
      buildWhen: (previous, current) =>
          previous.showAdditionalResources != current.showAdditionalResources,
      builder: (context, state) {
        return Visibility(
          visible: state.showAdditionalResources,
          child: SettingsListTile(
            title: Translations.additionalResources.title,
            subtitle: Translations.additionalResources.description,
            iconPath: Assets.icons.menu.path,
            onTap: () => context.pushNamed(AppRoute.additionalResources.named),
          ),
        );
      },
    );
  }
}
