import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_route.dart';

class PageNotFoundView extends StatelessWidget {
  const PageNotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppTranslations.pageNotFound.title),
          TextButton(
            onPressed: () => context.pushReplacementNamed(
              AppRoute.wrapper.name,
            ),
            child: Text(AppTranslations.pageNotFound.goBack),
          ),
        ],
      ),
    );
  }
}
