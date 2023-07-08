import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_body_text.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_button.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_header.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_illustration.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class DeleteAccountForm extends StatelessWidget {
  const DeleteAccountForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.deleteAccount),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const DeleteAccountIllustration(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const DeleteAccountHeader(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const DeleteAccountBodyText(),
        ],
      ),
      bottomSheet: const DeleteAccountButton(),
    );
  }
}
