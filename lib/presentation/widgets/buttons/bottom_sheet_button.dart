import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    required this.text,
    required this.icon,
    required this.onTap,
    super.key,
  });

  /// The callback function to be invoked when the button is tapped.
  final VoidCallback onTap;

  /// The text to be displayed on the button.
  final String text;

  /// The SVG icon asset path.
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.transparent,
      title: Text(
        text,
      ),
      leading: SvgPicture.asset(
        icon,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
