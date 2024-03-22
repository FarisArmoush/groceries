import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/hard_coded_extension.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

enum _AppLoadingIndicatorType { circular, linear }

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    super.key,
  })  : _type = _AppLoadingIndicatorType.circular,
        title = const SizedBox.shrink();

  const AppLoadingIndicator.linear({
    this.title,
    super.key,
  }) : _type = _AppLoadingIndicatorType.linear;

  final _AppLoadingIndicatorType _type;

  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return switch (_type) {
      _AppLoadingIndicatorType.circular => _CircularLoadingIndicator(key: key),
      _AppLoadingIndicatorType.linear => _LinearProgressIndicator(
          title: title,
          key: key,
        ),
    };
  }
}

class _CircularLoadingIndicator extends StatelessWidget {
  const _CircularLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: context.theme.primaryColorLight,
      ),
    );
  }
}

class _LinearProgressIndicator extends StatelessWidget {
  const _LinearProgressIndicator({this.title, super.key});

  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        padding: const EdgeInsetsDirectional.all(16),
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 32),
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
              child: title ?? Text('Just a sec...'.hardCoded),
            ),
            const SizedBox(height: 20),
            LinearProgressIndicator(
              minHeight: 5,
              borderRadius: BorderRadiusDirectional.circular(16),
              color: context.theme.primaryColorLight,
            ).allPadding(8),
          ],
        ),
      ),
    );
  }
}
