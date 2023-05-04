import 'package:flutter/material.dart';
import 'package:groceries/app/utils/constants/color_constants.dart';

/// Use this button when an action is called and you want to display
/// an untapable button which shows a loading indicator.
class LoadingStateFilledButton extends StatelessWidget {
  const LoadingStateFilledButton({
    required this.label,
    Key? key,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: null,
      style: const ButtonStyle().copyWith(
        foregroundColor: MaterialStateProperty.all(
          ColorConstants.white,
        ),
      ),
      icon: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 2,
          backgroundColor: ColorConstants.white,
        ),
      ),
      label: Text(label),
    );
  }
}
