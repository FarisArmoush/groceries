part of 'widgets.dart';

class PasswordInputObscurityButton extends StatelessWidget {
  const PasswordInputObscurityButton({
    required this.isObscure,
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        isObscure ? Assets.svg.icEye.path : Assets.svg.icEyeClosed.path,
        height: context.deviceHeight * 0.03,
        colorFilter: ColorFilter.mode(
          context.theme.hintColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
