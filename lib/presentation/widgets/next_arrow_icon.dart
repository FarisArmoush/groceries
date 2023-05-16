import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class NextArrowIcon extends StatelessWidget {
  const NextArrowIcon({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      context.locale.languageCode == 'ar'
          ? Assets.svg.icLeftArrow.path
          : Assets.svg.icRightArrow.path,
      color: color ?? Theme.of(context).hintColor,
    );
  }
}
