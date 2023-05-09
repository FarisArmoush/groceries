// ignore_for_file: use_if_null_to_convert_nulls_to_bools
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/app/presentation/modules/account_settings/widgets/logout_button.dart';
import 'package:groceries/app/presentation/modules/account_settings/widgets/user_data_list_tile.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({Key? key}) : super(key: key);

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
          FilledButton(
            onPressed: () => context.pushNamed(AppNamedRoutes.deleteAccount),
            child: Text(
              AppTranslations.deleteAccount,
            ),
          ),
        ],
      ),
    );
  }
}
