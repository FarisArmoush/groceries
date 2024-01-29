import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';
import 'package:groceries/utils/constants/app_colors.dart';

class CreateNewListFAB extends StatelessWidget {
  const CreateNewListFAB({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: const NextArrowIcon(
        color: AppColors.white,
      ),
    );
  }
}
