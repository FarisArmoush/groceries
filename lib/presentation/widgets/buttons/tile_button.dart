import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class TileButton extends StatelessWidget {
  const TileButton({
    required this.onTap,
    required this.title,
    required this.icon,
    this.color,
    super.key,
  });

  final String title;
  final String icon;
  final Color? color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onTap: onTap,
      leading: SvgPicture.asset(
        icon,
        color: color ?? Theme.of(context).primaryColor,
      ),
      title: Text(
        title,
        style: AppTextStyles.poppinsRegular(
          color: color ?? Theme.of(context).primaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
