import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    required this.text,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.transparent,
      title: Text(
        text,
        style: AppTextStyles.regular(
          context: context,
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
      ),
      leading: SvgPicture.asset(
        icon,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
