import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    required this.text,
    required this.iconPath,
    required this.onTap,
    super.key,
  });

  /// The callback function to be invoked when the button is tapped.
  final VoidCallback onTap;

  /// The text to be displayed on the button.
  final String text;

  /// The SVG icon asset path.
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.transparent,
      title: Text(
        text,
      ),
      leading: SvgPicture.asset(
        iconPath,
        // ignore: deprecated_member_use
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
