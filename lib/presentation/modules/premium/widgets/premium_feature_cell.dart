import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class PremiumFeatureCell extends StatelessWidget {
  const PremiumFeatureCell({
    required this.title,
    required this.iconBackgroundColor,
    required this.iconPath,
    super.key,
  });
  final Widget title;
  final Color iconBackgroundColor;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        _buildIcon(context),
        const SizedBox(width: 8),
        Flexible(
          child: DefaultTextStyle(
            style: TextStyle(
              color: context.theme.primaryColor,
            ),
            child: title,
          ),
        ),
      ],
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(8),
        color: iconBackgroundColor,
      ),
      padding: const EdgeInsetsDirectional.all(4),
      child: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          context.theme.primaryColor,
          BlendMode.srcIn,
        ),
        height: 20,
      ),
    );
  }
}
