import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

/// {@template primary_box}
/// A widget that represents a primary box container
/// with optional header and customizable styling.
/// {@endtemplate}
class PrimaryBox extends StatelessWidget {
  /// {@macro primary_box}
  const PrimaryBox({
    required this.child,
    this.header,
    this.backgroundColor,
    this.borderRadius,
    super.key,
  });

  /// The main content of the box.
  final Widget child;

  /// An optional header widget displayed above the main content.
  final Widget? header;

  /// The background color of the box.
  final Color? backgroundColor;

  /// The border radius of the box.
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
        child: _child(),
      ),
    );
  }

  Widget _child() {
    return header == null ? child : _childWithHeader();
  }

  Column _childWithHeader() {
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
