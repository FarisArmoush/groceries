import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_body_text.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_button.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_header_text.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.deleteAccount.deleteAccount),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: AppPaddings.scaffoldPadding(context),
        children: [
          Assets.svg.illGaming.svg(
            height: context.deviceHeight * 0.4,
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const DeleteAccountHeaderText(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const DeleteAccountBodyText(),
        ],
      ),
      persistentFooterButtons: const [
        DeleteAccountButton(),
      ],
    );
  }
}
