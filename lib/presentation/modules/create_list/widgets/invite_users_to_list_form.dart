import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class InviteUsersToListForm extends StatelessWidget {
  const InviteUsersToListForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      children: [
        Assets.svg.illCall.svg(),
        Text(
          AppTranslations.invitePeopleToList,
          style: TextStyle(
            fontFamily: AppFonts.semiBold(context),
            color: context.theme.primaryColor,
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.04,
        ),
        _buttonsRow(context),
        SizedBox(
          height: context.deviceHeight * 0.06,
        ),
      ],
    );
  }

  Column _buttonsRow(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: Assets.svg.icAtSign.svg(
            color: context.theme.primaryColor,
            height: context.deviceHeight * 0.03,
          ),
          label: Text(
            AppTranslations.email,
            style: TextStyle(
              fontFamily: AppFonts.regular(context),
              color: context.theme.primaryColor,
              fontSize: 16,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Assets.svg.icClipboardCopy.svg(
            color: context.theme.primaryColor,
            height: context.deviceHeight * 0.03,
          ),
          label: Text(
            AppTranslations.copyInvitationLink,
            style: TextStyle(
              fontFamily: AppFonts.regular(context),
              color: context.theme.primaryColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
