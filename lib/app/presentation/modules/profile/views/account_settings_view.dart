import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          const AppTextField(
            labelText: 'Username',
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          const AppTextField(
            labelText: 'Email',
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          const AppTextField(
            labelText: 'Old password',
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          const AppTextField(
            labelText: 'New Password',
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          const AppTextField(
            labelText: 'Confirm New Password',
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          FilledButton(
            onPressed: () {},
            child: const Text('Delete Account?'),
          ),
        ],
      ),
    );
  }
}
