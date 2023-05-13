import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/home/widgets/app_tip_text.dart';
import 'package:groceries/presentation/modules/home/widgets/greeting_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GreetingText(),
        AppTipText(),
      ],
    );
  }
}
