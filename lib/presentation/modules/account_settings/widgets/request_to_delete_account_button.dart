import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';

class RequestToDeleteAccountButton extends StatelessWidget {
  const RequestToDeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () async {
        // ignore: unawaited_futures
        showDialog<AppLoadingIndicator>(
          context: context,
          builder: (context) => const AppLoadingIndicator(),
        );
        await Future.delayed(const Duration(seconds: 1), () {
          context
            ..pop()
            ..pushNamed(AppNamedRoutes.deleteAccount);
        });
      },
      child: Text(AppTranslations.deleteAccount),
    );
  }
}
