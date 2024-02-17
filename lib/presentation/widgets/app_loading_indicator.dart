import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

enum AppLoadingIndicatorType {
  circular,
  linear,
}

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    this.type = AppLoadingIndicatorType.circular,
    this.title,
    super.key,
  }) : assert(
          !(type == AppLoadingIndicatorType.circular && title != null),
          "Canno't provide a title when using AppLoadingIndicatorType.circular",
        );

  final AppLoadingIndicatorType type;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      AppLoadingIndicatorType.circular => _circular(context),
      AppLoadingIndicatorType.linear => _linear(context),
    };
  }

  Widget _circular(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: context.theme.primaryColorLight,
      ),
    );
  }

  Widget _linear(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 32),
        child: Container(
          padding: const EdgeInsetsDirectional.all(16),
          decoration: BoxDecoration(
            color: context.theme.scaffoldBackgroundColor,
            borderRadius: BorderRadiusDirectional.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultTextStyle(
                style: TextStyle(
                  fontWeight: AppFontWeights.medium,
                  color: context.theme.primaryColor,
                  fontSize: 20,
                ),
                child: title ?? const Text('Just a sec...'),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsetsDirectional.all(8),
                child: LinearProgressIndicator(
                  minHeight: 5,
                  borderRadius: BorderRadiusDirectional.circular(16),
                  color: context.theme.primaryColorLight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
