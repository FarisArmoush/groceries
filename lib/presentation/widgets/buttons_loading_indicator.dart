import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/app_colors.dart';

/// {@template buttons_loading_indicator}
/// A loading indicator widget used for buttons. Usually used as an icon param.
/// {@endtemplate}
class ButtonsLoadingIndicator extends StatelessWidget {
  /// {@macro buttons_loading_indicator}
  const ButtonsLoadingIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 2,
          backgroundColor: AppColors.white,
        ),
      ),
    );
  }
}
