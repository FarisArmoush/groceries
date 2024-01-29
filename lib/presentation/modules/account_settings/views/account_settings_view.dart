import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
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
        title: Text(AppTranslations.accountSettings.accountSettings),
      ),
      body: ListView(
        padding: AppPaddings.scaffoldPadding(context),
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
          FilledButton(
            onPressed: () async {
              unawaited(
                showDialog<AppLoadingIndicator>(
                  context: context,
                  builder: (context) => const AppLoadingIndicator(),
                ),
              );
              await Future.delayed(
                500.milliseconds,
                () => context
                  ..pop()
                  ..pushNamed(AppNamedRoutes.deleteAccount),
              );
            },
            child: Text(AppTranslations.deleteAccount.deleteAccount),
          ),
        ],
      ),
    );
  }
}
