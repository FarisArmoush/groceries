import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_body_text.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_button.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_header.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_illustration.dart';

class DeleteAccountForm extends StatelessWidget {
  const DeleteAccountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            height: size.height * 0.01,
          ),
          const DeleteAccountHeader(),
          SizedBox(
            height: size.height * 0.02,
          ),
          const DeleteAccountBodyText(),
        ],
      ),
      bottomSheet: const DeleteAccountButton(),
    );
  }
}
