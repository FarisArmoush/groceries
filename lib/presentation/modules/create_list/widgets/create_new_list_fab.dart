import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

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
      label: SvgPicture.asset(
        Assets.svg.icRightArrow,
        color: AppColors.white,
      ),
    );
  }
}
