import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class YourAccountIsVerifiedBottomSheet extends StatelessWidget {
  const YourAccountIsVerifiedBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceWidth,
      child: Padding(
        padding: AppPaddings.bottomSheet(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.illustrations.celebrating.svg(
              height: context.deviceHeight * 0.2,
            ),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            Text(
              Translations.verifyAccount.isVerified,
              style: context.theme.dialogTheme.titleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
