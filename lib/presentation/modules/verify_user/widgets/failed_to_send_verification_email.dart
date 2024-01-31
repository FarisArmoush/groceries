import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class FailedToSendVerificationEmail extends StatelessWidget {
  const FailedToSendVerificationEmail({required this.error, super.key});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.illError.svg(
          height: context.deviceHeight * 0.3,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Text(
          error,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    ).centered().symmetricPadding(
          vertical: 12,
          horizontal: 24,
        );
  }
}
