import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class InvitePeopleToListText extends StatelessWidget {
  const InvitePeopleToListText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.createGroceryList.invitePeopleToList,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColor,
        fontSize: 28,
      ),
      textAlign: TextAlign.center,
    );
  }
}
