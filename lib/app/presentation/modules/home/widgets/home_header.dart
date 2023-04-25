import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/home/widgets/app_tip_text.dart';
import 'package:groceries/app/presentation/modules/home/widgets/greeting_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        GreetingText(),
        AppTipText(),
      ],
    );
  }
}
