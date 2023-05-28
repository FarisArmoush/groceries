import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class YouHaveNoTasks extends StatelessWidget {
  const YouHaveNoTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.illBirdWatching.svg(
          height: context.deviceHeight * 0.2,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        Text(
          AppTranslations.youDontHaveTasks,
          style: TextStyle(
            fontFamily: AppFonts.medium(context),
            fontSize: 16,
            color: Theme.of(context).primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
