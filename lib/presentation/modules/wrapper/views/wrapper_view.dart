part of '../wrapper.dart';

/// A widget that acts as a wrapper around the main content of the application
/// and handles the display of different views based on the authentication state
class WrapperView extends StatelessWidget {
  /// Creates a [WrapperView] widget.
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) => switch (state) {
        Unauthenticated() => context.pushReplacementNamed(
            AppNamedRoutes.welcome,
          ),
        Authenticated() => context.pushReplacementNamed(
            AppNamedRoutes.root,
          ),
      },
      child: const Scaffold(
        body: AppLoadingIndicator(),
      ),
    );
  }
}
