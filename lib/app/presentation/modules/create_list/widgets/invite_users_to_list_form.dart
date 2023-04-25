import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/gen/assets.gen.dart';

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
          'Invite people to your list via:',
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
            'Copy Invitation Link',
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
            'Email',
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
