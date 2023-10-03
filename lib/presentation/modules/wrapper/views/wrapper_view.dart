part of '../wrapper.dart';

/// A widget that acts as a wrapper around the main content of the application
/// and handles the display of different views based on the authentication state
class WrapperView extends StatelessWidget {
  /// Creates a [WrapperView] widget.
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) => state.when(
        authenticated: (_) => context.pushReplacementNamed(
          AppNamedRoutes.root,
        ),
        unAuthenticated: () => context.pushReplacementNamed(
          AppNamedRoutes.welcome,
        ),
      ),
      child: const Scaffold(
        body: AppLoadingIndicator(),
      ),
    );
  }
}
