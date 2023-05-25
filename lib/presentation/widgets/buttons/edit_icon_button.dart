import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class EditIconButton extends StatelessWidget {
  const EditIconButton({
    required this.onPressed,
    this.padding,
    super.key,
  });

  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8),
      child: CircleAvatar(
        backgroundColor: AppColors.black.withOpacity(0.7),
        child: IconButton(
          onPressed: onPressed,
          icon: Assets.svg.icEdit.svg(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
