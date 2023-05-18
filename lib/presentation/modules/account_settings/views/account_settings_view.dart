import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/logout_button.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/request_to_delete_account_button.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_data_list_tile.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final user = context.read<FirebaseAuthRepository>().currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.accountSettings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          UserDataListTile(
            title: AppTranslations.username,
            subtitle: user?.displayName,
            onTap: () {},
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          UserDataListTile(
            title: AppTranslations.email,
            subtitle: user?.email,
            onTap: () {},
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          UserDataListTile(
            title: 'Verified?',
            // ignore: use_if_null_to_convert_nulls_to_bools
            subtitle: user?.emailVerified == true ? 'Yes' : 'No',
            onTap: () {},
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          UserDataListTile(
            title: 'Account Creation Meta Data',
            subtitle: user?.metadata.creationTime.toString() ?? '',
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          const LogoutButton(),
          SizedBox(
            height: size.height * 0.05,
          ),
          const RequestToDeleteAccountButton(),
        ],
      ),
    );
  }
}
