import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';

/// {@template next_arrow_icon}
/// An icon widget that represents a next arrow.
///
/// * The [color] parameter specifies the color of the icon.
/// {@endtemplate}
class NextArrowIcon extends StatelessWidget {
  /// {@macro next_arrow_icon}
  const NextArrowIcon({
    super.key,
    this.color,
  });

  /// The color of the icon.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      context.locale.languageCode == 'ar'
          ? Assets.icons.leftArrow.path
          : Assets.icons.rightArrow.path,
      colorFilter: ColorFilter.mode(
        color ?? context.theme.hintColor,
        BlendMode.srcIn,
      ),
    );
  }
}
