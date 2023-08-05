part of '../wrapper.dart';

/// A widget that acts as a wrapper around the main content of the application
/// and handles the display of different views based on the authentication state
class WrapperView extends StatelessWidget {
  /// Creates a [WrapperView] widget.
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state is Unauthenticated) {
          return const WelcomeView();
        }
        if (state is Authenticated) {
          return const RootView();
        }
        return const Scaffold(
          body: Center(
            child: AppLoadingIndicator(),
          ),
        );
      },
    );
  }
}
