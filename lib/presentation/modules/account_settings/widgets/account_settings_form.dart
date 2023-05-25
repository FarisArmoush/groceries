import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/edit_user_image_button.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/is_user_verified_list_tile.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/logout_button.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/request_to_delete_account_button.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_creation_meta_data_list_tile.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_email_list_tile.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_image.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_username_list_tile.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class AccountSettingsForm extends StatelessWidget {
  const AccountSettingsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.accountSettings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          const UserImage(),
          const EditUserImageButton(),
          SizedBox(height: context.deviceHeight * 0.02),
          const UserUsernameListTile(),
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
          const RequestToDeleteAccountButton(),
        ],
      ),
    );
  }
}
