import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class InviteUsersToListForm extends StatelessWidget {
  const InviteUsersToListForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      children: [
        SvgPicture.asset(Assets.svg.illCall),
        Text(
          AppTranslations.invitePeopleToList,
          style: AppTextStyles.poppinsSemiBold(
            color: Theme.of(context).primaryColor,
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size.height * 0.04),
        _buttonsRow(context),
        SizedBox(height: size.height * 0.06),
      ],
    );
  }

  Column _buttonsRow(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.svg.icClipboardCopy,
            color: Theme.of(context).primaryColor,
            height: size.height * 0.03,
          ),
          label: Text(
            AppTranslations.copyInvitationLink,
            style: AppTextStyles.poppinsRegular(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.svg.icAtSign,
            color: Theme.of(context).primaryColor,
            height: size.height * 0.03,
          ),
          label: Text(
            AppTranslations.email,
            style: AppTextStyles.poppinsRegular(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
