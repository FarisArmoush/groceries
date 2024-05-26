import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    required this.text,
    required this.iconPath,
    required this.onTap,
    this.color,
    super.key,
  });

  final void Function() onTap;

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
