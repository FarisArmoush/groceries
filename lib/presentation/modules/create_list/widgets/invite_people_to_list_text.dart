import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class InvitePeopleToListText extends StatelessWidget {
  const InvitePeopleToListText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.createGroceryList.invitePeopleToList,
      style: TextStyle(
        fontWeight: AppFontWeights.semiBold,
        color: context.theme.primaryColor,
        fontSize: 28,
      ),
      textAlign: TextAlign.center,
    );
  }
}
