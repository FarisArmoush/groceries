import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_bloc.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/edit_user_image_button.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/is_user_verified_list_tile.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/logout_button.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_creation_meta_data_list_tile.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_display_name_list_tile.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_email_list_tile.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_image.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.accountSettings.title),
      ),
      body: ListView(
        padding: AppPaddings.scaffold(context),
        children: [
          const UserImage(),
          const EditUserImageButton(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const UserDisplayNameListTile(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const UserEmailListTile(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const IsUserVerifiedListTile(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const UserCreationMetaDataListTile(),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
          const LogoutButton(),
          SizedBox(
            height: context.deviceHeight * 0.05,
          ),
          const _DeleteAccountButton(),
        ],
      ),
    );
  }
}

class _DeleteAccountButton extends StatefulWidget {
  const _DeleteAccountButton();

  @override
  State<_DeleteAccountButton> createState() => _DeleteAccountButtonState();
}

class _DeleteAccountButtonState extends State<_DeleteAccountButton> {
  @override
  void initState() {
    context.read<RemoteConfigBloc>().add(
          const RemoteConfigEvent.getShowDeleteAccountButton(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<RemoteConfigBloc>();
    final visible = bloc.state.showDeleteAccountButton;
    return Visibility(
      visible: visible,
      child: FilledButton(
        onPressed: () {
          showDialog<AppLoadingIndicator>(
            context: context,
            builder: (context) => const AppLoadingIndicator(),
            barrierDismissible: false,
          );
          Future.delayed(
            500.milliseconds,
            () => context
              ..pop()
              ..pushNamed(AppRoute.deleteAccount.name),
          );
        },
        child: Text(AppTranslations.deleteAccount.deleteAccount),
      ),
    );
  }
}
