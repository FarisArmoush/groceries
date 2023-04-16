import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/gen/assets.gen.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: Row(
        children: [
          Text(
            'Next',
            style: AppTextStyles.poppinsRegular(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.015,
          ),
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 12,
            child: SvgPicture.asset(
              Assets.svg.icRightArrow,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
