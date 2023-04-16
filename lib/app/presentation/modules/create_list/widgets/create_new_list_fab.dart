import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/color_constants.dart';
import 'package:groceries/gen/assets.gen.dart';

class CreateNewListFAB extends StatelessWidget {
  const CreateNewListFAB({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      backgroundColor: Theme.of(context).primaryColorLight,
      label: SvgPicture.asset(
        Assets.svg.icRightArrow,
        color: ColorConstants.white,
      ),
    );
  }
}
