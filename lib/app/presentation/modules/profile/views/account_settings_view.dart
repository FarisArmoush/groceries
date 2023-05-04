import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.accountSettings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          AppTextField(
            labelText: AppTranslations.username,
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          AppTextField(
            labelText: AppTranslations.email,
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          AppTextField(
            labelText: AppTranslations.password,
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          AppTextField(
            labelText: AppTranslations.password,
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          AppTextField(
            labelText: AppTranslations.password,
          ),
          SizedBox(
            height: size.height * 0.03,
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
