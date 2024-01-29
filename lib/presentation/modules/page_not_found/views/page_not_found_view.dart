import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';

class PageNotFoundView extends StatelessWidget {
  const PageNotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Page Not Found'),
          TextButton(
            onPressed: () => context.pushReplacementNamed(
              AppNamedRoutes.wrapper,
            ),
            child: const Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
