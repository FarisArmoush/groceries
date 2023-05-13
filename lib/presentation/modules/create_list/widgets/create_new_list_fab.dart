import 'package:flutter/material.dart';
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
      label: Assets.svg.icRightArrow.svg(
        color: AppColors.white,
      ),
    );
  }
}
