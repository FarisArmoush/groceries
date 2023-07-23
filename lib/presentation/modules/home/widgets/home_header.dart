import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/home/widgets/app_tip_text.dart';
import 'package:groceries/presentation/modules/home/widgets/greeting_text.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GreetingText(),
          AppTipText(),
        ],
      ),
    );
  }
}
