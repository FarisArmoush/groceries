import 'package:flutter/material.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';

class ButtonsLoadingIndicator extends StatelessWidget {
  const ButtonsLoadingIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 2,
        backgroundColor: context.colorScheme.secondary,
      ),
    );
  }
}
