import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class PrimaryBox extends StatelessWidget {
  const PrimaryBox({
    required this.child,
    this.header,
    this.backgroundColor,
    this.borderRadius,
    super.key,
  });

  final Widget child;
  final Widget? header;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        color: backgroundColor ?? context.theme.cardColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: _child(context),
      ),
    );
  }

  Widget _child(BuildContext context) {
    return header == null ? child : _childWithHeader(context);
  }

  Widget _childWithHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        DefaultTextStyle.merge(
          style: TextStyle(
            fontFamily: AppFonts.regular(context),
            color: context.theme.primaryColor,
            fontSize: 16,
          ),
          child: header ?? const SizedBox.shrink(),
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }
}
