import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/color_constants.dart';
import 'package:groceries/gen/assets.gen.dart';

class CreateYourFirstListButton extends StatelessWidget {
  const CreateYourFirstListButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Theme.of(context).primaryColorLight,
        ),
      ),
      icon: SvgPicture.asset(
        Assets.svg.icPlusCircle,
        color: ColorConstants.white,
      ),
      label: const Text('Create Your First List'),
    );
  }
}
