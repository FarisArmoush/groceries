import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/constants/color_constants.dart';
import 'package:groceries/app/presentation/modules/create_list/widgets/send_invite_via_button.dart';
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
        vertical: 32,
        horizontal: 32,
      ),
      children: [
        Text(
          'How would you like to send invites?',
          style: AppTextStyles.poppinsSemiBold(
            color: Theme.of(context).primaryColor,
            fontSize: 32,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size.height * 0.04),
        _buttonsRow(),
        SizedBox(height: size.height * 0.06),
      ],
    );
  }

  Row _buttonsRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SendInviteViaButton(
          onPressed: () {},
          bottomText: 'SMS',
          icon: Assets.svg.icMessageBubble,
          backgroundColor: ColorConstants.black,
        ),
        SendInviteViaButton(
          onPressed: () {},
          bottomText: 'WhatsApp',
          backgroundColor: Colors.green,
          icon: Assets.svg.icWhatsapp,
        ),
        SendInviteViaButton(
          onPressed: () {},
          bottomText: 'Email',
          backgroundColor: Colors.blue,
          icon: Assets.svg.icAtSign,
        ),
      ],
    );
  }
}
