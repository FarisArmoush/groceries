import 'package:flutter/material.dart';

class PrimaryBox extends StatelessWidget {
  const PrimaryBox({
    required this.child,
    this.header,
    this.backgroundColor,
    this.borderRadius,
    Key? key,
  }) : super(key: key);

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
        color: backgroundColor ?? Theme.of(context).cardColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: widget(),
      ),
    );
  }

  Widget widget() {
    return header == null ? child : childWithHeader();
  }

  Widget childWithHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        header ?? const SizedBox.shrink(),
        const SizedBox(height: 12),
        child,
      ],
    );
  }
}
