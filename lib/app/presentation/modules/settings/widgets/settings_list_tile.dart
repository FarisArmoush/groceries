import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/utils/constants/app_colors.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';
import 'package:groceries/gen/assets.gen.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    required this.title,
    required this.icon,
    required this.iconsBoxColor,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String icon;
  final String title;
  final VoidCallback onTap;
  final Color iconsBoxColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.transparent,
      leading: _leading(),
      title: Text(
        title,
        style: AppTextStyles.poppinsRegular(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
      ),
      trailing: SvgPicture.asset(
        Assets.svg.icRightArrow,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Container _leading() {
    return Container(
      width: 32,
      height: 32,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: iconsBoxColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SvgPicture.asset(
        icon,
        color: AppColors.white,
      ),
    );
  }
}
