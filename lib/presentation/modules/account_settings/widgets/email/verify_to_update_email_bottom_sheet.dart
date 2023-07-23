import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class VerifyToUpdateEmailBottomSheet extends StatelessWidget {
  const VerifyToUpdateEmailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      children: [
        Assets.svg.illWriting.svg(
          height: context.deviceHeight * 0.25,
        ),
        SizedBox(
          height: context.deviceHeight * 0.05,
        ),
        Text(
          'You need to verify your account in order to change your email.',
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.03,
        ),
      ],
    );
  }
}
