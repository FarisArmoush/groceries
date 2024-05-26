import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class YouHaveNoTasks extends StatelessWidget {
  const YouHaveNoTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.illustrations.birdWatching.svg(
          height: context.deviceHeight * 0.2,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        Text(
          Translations.home.youDontHaveTasks,
          style: TextStyle(
            fontWeight: AppFontWeights.medium,
            fontSize: 16,
            color: context.theme.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
