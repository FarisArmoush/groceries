part of '../page_not_found.dart';

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
