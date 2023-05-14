import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class OtherOptionTextButton extends StatelessWidget {
  const OtherOptionTextButton({
    required this.onTap,
    required this.upperText,
    required this.lowerText,
    super.key,
  });
  final String upperText;
  final String lowerText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: '$upperText\n',
              style: AppTextStyles.poppinsLight(
                color: Theme.of(context).hintColor,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text: lowerText,
              style: AppTextStyles.poppinsMedium(
                color: Theme.of(context).primaryColorLight,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
