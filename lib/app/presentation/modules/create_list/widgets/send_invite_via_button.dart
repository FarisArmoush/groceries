import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/constants/color_constants.dart';

class SendInviteViaButton extends StatelessWidget {
  const SendInviteViaButton({
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.bottomText,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String icon;
  final Color? backgroundColor;
  final String? bottomText;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        IconButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(16),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor ?? Colors.red,
            ),
          ),
          onPressed: onPressed,
          icon: SvgPicture.asset(
            icon,
            color: ColorConstants.white,
            height: size.height * 0.06,
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          bottomText ?? 'WhatsApp',
          style: AppTextStyles.poppinsRegular(
            color: Theme.of(context).primaryColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
