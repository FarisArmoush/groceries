import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_colors.dart';

class ButtonsLoadingIndicator extends StatelessWidget {
  const ButtonsLoadingIndicator({
    this.backgroundColor,
    super.key,
  });
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 2,
        backgroundColor: AppColors.white,
      ),
    );
  }
}
