import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInAnimation(
        child: CircularProgressIndicator(
          color: context.theme.primaryColorLight,
        ),
      ),
    );
  }
}
