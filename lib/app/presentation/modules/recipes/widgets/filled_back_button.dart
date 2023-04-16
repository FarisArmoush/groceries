import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/color_constants.dart';
import 'package:groceries/gen/assets.gen.dart';

class FilledBackButton extends StatelessWidget {
  const FilledBackButton({this.onPressed, Key? key}) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorConstants.black.withOpacity(0.8),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed ?? () => context.pop(),
        icon: SvgPicture.asset(
          Assets.svg.icLeftArrow,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
