import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class NoNotificationsYet extends StatelessWidget {
  const NoNotificationsYet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: context.deviceHeight * 0.35,
          child: Assets.svg.illMail.svg(),
        ),
        SizedBox(
          height: context.deviceHeight * 0.03,
        ),
        Text(
          AppTranslations.notifications,
          style: TextStyle(
            fontFamily: AppFonts.semiBold(context),
            color: Theme.of(context).primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.emptyNotifications,
          style: TextStyle(
            fontFamily: AppFonts.medium(context),
            color: Theme.of(context).hintColor,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
