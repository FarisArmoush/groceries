import 'package:flutter/material.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ErrorState extends StatelessWidget {
  const ErrorState({
    required this.title,
    this.icon,
    this.actionButton,
    super.key,
  });

  final Widget title;
  final Widget? icon;
  final Widget? actionButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon(),
        SizedBox(height: context.deviceHeight * 0.01),
        _buildTitle(context),
        SizedBox(height: context.deviceHeight * 0.01),
        _buildActionButton(),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: AppPaddings.scaffoldHorizontal(context),
      child: DefaultTextStyle.merge(
        child: title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 22,
          fontFamily: AppFonts.medium(context),
          color: context.theme.primaryColor,
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return icon ?? Assets.svg.illError.svg();
  }

  Widget _buildActionButton() {
    return actionButton ?? const SizedBox.shrink();
  }
}
