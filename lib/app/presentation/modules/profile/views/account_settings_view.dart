import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';
import 'package:groceries/app/presentation/widgets/buttons/app_button.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          const AppTextField(
            labelText: 'Username',
          ),
          const AppTextField(
            labelText: 'Email',
          ),
          const AppTextField(
            labelText: 'Old password',
          ),
          const AppTextField(
            labelText: 'New Password',
          ),
          const AppTextField(
            labelText: 'Confirm New Password',
          ),
          AppButton(
            text: 'Delete Account',
            buttonStyle: AppButtonStyles.red(context),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
