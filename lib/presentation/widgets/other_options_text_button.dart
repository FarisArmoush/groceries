import 'package:flutter/material.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class SwitchAuthenticationOptionTextButton extends StatelessWidget {
  const SwitchAuthenticationOptionTextButton({
    required this.onTap,
    required this.upperText,
    required this.lowerText,
    super.key,
  });
  final String upperText;
  final String lowerText;
  final void Function() onTap;

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
                fontWeight: AppFontWeights.light,
                color: context.theme.hintColor,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text: lowerText,
              style: TextStyle(
                fontWeight: AppFontWeights.medium,
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
