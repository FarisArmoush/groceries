import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class NoNotificationsYet extends StatelessWidget {
  const NoNotificationsYet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.35,
          child: Assets.svg.illMail.svg(),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          AppTranslations.notifications,
          style: AppTextStyles.semiBold(
            context: context,
            color: Theme.of(context).primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          AppTranslations.emptyNotificationsBody,
          style: AppTextStyles.light(
            context: context,
            color: Theme.of(context).hintColor,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
