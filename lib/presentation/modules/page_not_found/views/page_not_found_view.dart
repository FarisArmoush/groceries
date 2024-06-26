import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/router/app_route.dart';

class PageNotFoundView extends StatelessWidget {
  const PageNotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Translations.pageNotFound.title),
          TextButton(
            onPressed: () => context.pushReplacementNamed(
              AppRoute.wrapper.named,
            ),
            child: Text(Translations.pageNotFound.goBack),
          ),
        ],
      ),
    );
  }
}
