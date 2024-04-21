import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:groceries/presentation/modules/root/views/root_view.dart';
import 'package:groceries/presentation/modules/welcome/views/welcome_view.dart';

/// A widget that acts as a wrapper around the main content of the application
/// and handles the display of different views based on the authentication state
class WrapperView extends StatelessWidget {
  /// Creates a [WrapperView] widget.
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) => state.when(
        authenticated: (_) => const RootView(),
        unAuthenticated: () => const WelcomeView(),
      ),
    );
  }
}
