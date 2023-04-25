import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/gen/assets.gen.dart';

class GroceryListSettingsView extends StatelessWidget {
  const GroceryListSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Settings'),
      ),
      body: ListView(
        children: [
          SvgPicture.asset(Assets.svg.illBirdWatching),
          SvgPicture.asset(Assets.svg.illCall),
          SvgPicture.asset(Assets.svg.illCelebrating),
          SvgPicture.asset(Assets.svg.illComputer),
          SvgPicture.asset(Assets.svg.illEating),
          SvgPicture.asset(Assets.svg.illError),
          SvgPicture.asset(Assets.svg.illFishing),
          SvgPicture.asset(Assets.svg.illFootball),
          SvgPicture.asset(Assets.svg.illGaming),
          SvgPicture.asset(Assets.svg.illMail),
          SvgPicture.asset(Assets.svg.illMusic),
          SvgPicture.asset(Assets.svg.illMail),
          SvgPicture.asset(Assets.svg.illScooter),
          SvgPicture.asset(Assets.svg.illShopping),
          SvgPicture.asset(Assets.svg.illWriting),
        ],
      ),
    );
  }
}
