import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class YourAccountIsVerifiedBottomSheet extends StatelessWidget {
  const YourAccountIsVerifiedBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      children: [
        Assets.svg.icVerified.svg(
          height: context.deviceHeight * 0.2,
          color: Colors.green,
        ),
        SizedBox(
          height: context.deviceHeight * 0.03,
        ),
        Text(
          AppTranslations.yourAccountIsVerified,
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
