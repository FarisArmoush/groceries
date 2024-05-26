import 'package:flutter/material.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class AppPrimaryBox extends StatelessWidget {
  const AppPrimaryBox({
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
      padding: const EdgeInsetsDirectional.all(16),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadiusDirectional.circular(16),
        color: backgroundColor ?? context.theme.cardColor,
      ),
      child: Material(
        color: AppColors.transparent,
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
            fontWeight: AppFontWeights.regular,
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
