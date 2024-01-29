import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    required this.text,
    required this.iconPath,
    required this.onTap,
    this.color,
    super.key,
  });

  final VoidCallback onTap;

  final String text;

  final String iconPath;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: AppColors.transparent,
      title: Text(
        text,
        style: context.theme.listTileTheme.titleTextStyle!.copyWith(
          color: color,
        ),
      ),
      leading: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          color ?? context.theme.primaryColor,
          BlendMode.srcIn,
        ),
        height: context.deviceHeight * 0.03,
      ),
    );
  }
}
