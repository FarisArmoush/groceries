import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

/// {@template app_loading_indicator}
/// A widget that displays a loading indicator.
///
/// This widget is used to indicate a loading state.
/// {@endtemplate}
class AppLoadingIndicator extends StatelessWidget {
  /// {@macro app_loading_indicator}
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
