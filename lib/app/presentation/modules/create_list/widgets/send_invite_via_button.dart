import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/constants/color_constants.dart';

class SendInviteViaButton extends StatelessWidget {
  const SendInviteViaButton({
    required this.icon,
    required this.onPressed,
    required this.bottomText,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String icon;
  final String bottomText;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(16),
      child: Column(
        children: [
          Container(
            height: size.height * 0.15,
            width: size.width * 0.15,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.amber,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              icon,
              color: ColorConstants.white,
            ),
          ),
          Text(
            bottomText,
            style: AppTextStyles.poppinsRegular(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
