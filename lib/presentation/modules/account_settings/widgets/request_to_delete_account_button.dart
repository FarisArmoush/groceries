import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class RequestToDeleteAccountButton extends StatelessWidget {
  const RequestToDeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () async {
        unawaited(
          showDialog<AppLoadingIndicator>(
            context: context,
            builder: (context) => const AppLoadingIndicator(),
          ),
        );
        await Future.delayed(
          500.milliseconds,
          () {
            context
              ..pop()
              ..pushNamed(AppNamedRoutes.deleteAccount);
          },
        );
      },
      child: Text(AppTranslations.deleteAccount),
    );
  }
}
