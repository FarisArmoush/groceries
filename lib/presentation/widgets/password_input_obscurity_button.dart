import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class PasswordInputObscurityButton extends StatelessWidget {
  const PasswordInputObscurityButton({
    required this.isObscure,
    required this.onPressed,
    super.key,
  });
  final void Function() onPressed;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        isObscure ? Assets.icons.eye.path : Assets.icons.eyeClosed.path,
        height: context.deviceHeight * 0.03,
        colorFilter: ColorFilter.mode(
          context.theme.hintColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
