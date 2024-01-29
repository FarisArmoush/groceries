import 'package:flutter/material.dart';

class ErrorState extends StatelessWidget {
  const ErrorState({
    required this.title,
    this.svgPath,
    super.key,
  });

  final Widget title;
  final String? svgPath;

  @override
  Widget build(BuildContext context) {
    // TODO(FarisArmoush): Implement Error State Widget.
    return const Center(
      child: Column(),
    );
  }
}
