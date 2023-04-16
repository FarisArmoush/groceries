import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/home/widgets/header/app_tip_text.dart';
import 'package:groceries/app/presentation/modules/home/widgets/header/greeting_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: size.height * 0.01,
        ),
        const GreetingText(),
        SizedBox(
          height: size.height * 0.02,
        ),
        const AppTipText(),
      ],
    );
  }
}
