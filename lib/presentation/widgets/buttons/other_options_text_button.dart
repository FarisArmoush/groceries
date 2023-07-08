import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

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
              style: TextStyle(
                fontFamily: AppFonts.light(context),
                color: context.theme.hintColor,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text: lowerText,
              style: TextStyle(
                fontFamily: AppFonts.medium(context),
                color: context.theme.primaryColorLight,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
